// ignore_for_file: invalid_use_of_protected_member, deprecated_member_use, invalid_use_of_visible_for_testing_member

import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:word_search/word_search.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class CrosswordWidget extends StatefulWidget {
  CrosswordWidget({Key key}) : super(key: key);

  @override
  _CrosswordWidgetState createState() => _CrosswordWidgetState();
}

class _CrosswordWidgetState extends State<CrosswordWidget> {
  List<int> selesai = [];
  int numBoxPerRow = 12;
  double padding = 2;
  Size sizeBox = Size.zero;
  AssetsAudioPlayer audioPlayer =
      AssetsAudioPlayer(); // this will create a instance object of a class

  ValueNotifier<List<List<String>>> listChars;
  ValueNotifier<List<CrosswordAnswer>> answerList;
  ValueNotifier<CurrentDragObj> currentDragObj;
  ValueNotifier<List<int>> charsDone;

  @override
  void initState() {
    super.initState();
    listChars = new ValueNotifier<List<List<String>>>([]);
    answerList = new ValueNotifier<List<CrosswordAnswer>>([]);
    currentDragObj = new ValueNotifier<CurrentDragObj>(new CurrentDragObj());
    charsDone = new ValueNotifier<List<int>>(new List<int>());
    audioPlayer.open(
      Audio('assets/sound/cgtss.mp3'),
      autoStart: false,
    );

    generateRandomWord();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: appWhite.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: appBlack, width: 2)),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      color: Colors.blue,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.all(20),
                      child: drawCrosswordBox(),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: drawAnswerList(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void onDragEnd(PointerUpEvent event) {
    if (currentDragObj.value.currentDragLine == null) return;

    currentDragObj.value.currentDragLine.clear();
    currentDragObj.notifyListeners();
  }

  void onDragUpdate(PointerMoveEvent event) {
    generateLineOnDrag(event);
    int indexFound = answerList.value.indexWhere((answer) {
      return answer.answerLines.join("-") ==
          currentDragObj.value.currentDragLine.join("-");
    });
    if (indexFound >= 0) {
      answerList.value[indexFound].done = true;
      charsDone.value.addAll(answerList.value[indexFound].answerLines);
      charsDone.notifyListeners();
      answerList.notifyListeners();
      print("selesai ${selesai.length}");
      if (!selesai.contains(indexFound)) {
        audioPlayer.play();
        selesai.add(indexFound);
        AlertDialog alert = AlertDialog(
          title: Text("Horee :) !!!"),
          content: Container(
            height: 250,
            child: Column(
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Lottie.asset("assets/lotties/cgts.json"),
                ),
                Text('Selamat jawaban kamu benar.'),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text('Ok'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );

        showDialog(context: context, builder: (context) => alert);
        audioPlayer.dispose();
      }
    }
  }

  int calculateIndexBasePosLocal(Offset localPosition) {
    double maxSizeBox =
        ((sizeBox.width - (numBoxPerRow - 1) * padding) / numBoxPerRow);

    if (localPosition.dy > sizeBox.width || localPosition.dx > sizeBox.width)
      return -1;

    int x = 0, y = 0;
    double yAxis = 0, xAxis = 0;
    double yAxisStart = 0, xAxisStart = 0;

    for (var i = 0; i < numBoxPerRow; i++) {
      xAxisStart = xAxis;
      xAxis += maxSizeBox +
          (i == 0 || i == (numBoxPerRow - 1) ? padding / 2 : padding);

      if (xAxisStart < localPosition.dx && xAxis > localPosition.dx) {
        x = i;
        break;
      }
    }

    for (var i = 0; i < numBoxPerRow; i++) {
      yAxisStart = yAxis;
      yAxis += maxSizeBox +
          (i == 0 || i == (numBoxPerRow - 1) ? padding / 2 : padding);

      if (yAxisStart < localPosition.dy && yAxis > localPosition.dy) {
        y = i;
        break;
      }
    }

    return y * numBoxPerRow + x;
  }

  void generateLineOnDrag(PointerMoveEvent event) {
    if (currentDragObj.value.currentDragLine == null)
      currentDragObj.value.currentDragLine = new List<int>();
    int indexBase = calculateIndexBasePosLocal(event.localPosition);

    if (indexBase >= 0) {
      if (currentDragObj.value.currentDragLine.length >= 2) {
        WSOrientation wsOrientation;
        if (currentDragObj.value.currentDragLine[0] % numBoxPerRow ==
            currentDragObj.value.currentDragLine[1] % numBoxPerRow)
          wsOrientation = WSOrientation.vertical;
        else if (currentDragObj.value.currentDragLine[0] ~/ numBoxPerRow ==
            currentDragObj.value.currentDragLine[1] ~/ numBoxPerRow)
          wsOrientation = WSOrientation.horizontal;

        if (wsOrientation == WSOrientation.horizontal) {
          if (indexBase ~/ numBoxPerRow !=
              currentDragObj.value.currentDragLine[1] ~/ numBoxPerRow)
            onDragEnd(null);
        } else if (wsOrientation == WSOrientation.vertical) {
          if (indexBase % numBoxPerRow !=
              currentDragObj.value.currentDragLine[1] % numBoxPerRow)
            onDragEnd(null);
        } else
          onDragEnd(null);
      }

      if (!currentDragObj.value.currentDragLine.contains(indexBase))
        currentDragObj.value.currentDragLine.add(indexBase);
      else if (currentDragObj.value.currentDragLine.length >=
          2) if (currentDragObj.value.currentDragLine[
              currentDragObj.value.currentDragLine.length - 2] ==
          indexBase) onDragEnd(null);
    }
    currentDragObj.notifyListeners();
  }

  void onDragStart(int indexArray) {
    try {
      List<CrosswordAnswer> indexSelecteds = answerList.value
          .where((answer) => answer.indexArray == indexArray)
          .toList();
      if (indexSelecteds.length == 0) return;
      currentDragObj.value.indexArrayOnTouch = indexArray;
      currentDragObj.notifyListeners();
    } catch (e) {}
  }

  Widget drawCrosswordBox() {
    return Listener(
      onPointerUp: (event) => onDragEnd(event),
      onPointerMove: (event) => onDragUpdate(event),
      child: LayoutBuilder(
        builder: (context, constraints) {
          sizeBox = Size(constraints.maxWidth, constraints.maxWidth);
          return GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
              crossAxisCount: numBoxPerRow,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            itemCount: numBoxPerRow * numBoxPerRow,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              String char = listChars.value.expand((e) => e).toList()[index];
              return Listener(
                onPointerDown: (event) => onDragStart(index),
                child: ValueListenableBuilder(
                  valueListenable: currentDragObj,
                  builder: (context, CurrentDragObj value, child) {
                    Color color = appWhite;

                    if (value.currentDragLine.contains(index))
                      color = appLightRed;
                    else if (charsDone.value.contains(index))
                      color = appLightBlue;

                    return Container(
                      decoration: BoxDecoration(
                        color: color,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        char.toUpperCase(),
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }

  void generateRandomWord() {
    final List<String> wl = [
      'undangan',
      'Resmi',
      'Menyublim',
      'KapurBarus',
      'Pembangunan'
    ];
    final WSSettings ws = WSSettings(
      width: numBoxPerRow,
      height: numBoxPerRow,
      orientations: List.from([
        WSOrientation.horizontal,
        WSOrientation.horizontalBack,
        WSOrientation.vertical,
        WSOrientation.verticalUp,
      ]),
    );
    final WordSearch wordSearch = WordSearch();
    final WSNewPuzzle newPuzzle = wordSearch.newPuzzle(wl, ws);
    if (newPuzzle.errors.isEmpty) {
      listChars.value = newPuzzle.puzzle;
      final WSSolved solved = wordSearch.solvePuzzle(newPuzzle.puzzle, wl);
      answerList.value = solved.found
          .map((solve) => new CrosswordAnswer(solve, numPerRow: numBoxPerRow))
          .toList();
    }
  }

  drawAnswerList() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          margin: EdgeInsets.only(bottom: 30),
          decoration: BoxDecoration(
              color: appWhite.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: appBlack, width: 2)),
          child: ValueListenableBuilder(
            valueListenable: answerList,
            builder: (context, List<CrosswordAnswer> value, child) {
              return Container(
                  padding: EdgeInsets.all(10),
                  child: CustomScrollView(
                    primary: false,
                    slivers: <Widget>[
                      SliverPadding(
                        padding: const EdgeInsets.all(0),
                        sliver: SliverGrid.count(
                          crossAxisCount: 1,
                          childAspectRatio: 1,
                          mainAxisSpacing: 0,
                          children: <Widget>[
                            Text(
                              '1.Surat yang berisi permintaan seseorang untuk menghadiri suatu acara.',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: value[0].done ? appLightBlue : appBlack,
                              ),
                            ),
                            Text(
                                '2. Surat undangan untuk kepentingan kedinasan.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      value[1].done ? appLightBlue : appBlack,
                                )),
                            Text('3. Perubahan wujud benda padat menjadi gas.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      value[2].done ? appLightBlue : appBlack,
                                )),
                            Text(
                                '4. Benda yang terlalu lama dilemari akan mengecil dan menghilang.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      value[3].done ? appLightBlue : appBlack,
                                )),
                            Text(
                                '5. Termasuk salah satu kegiatan mengisi kemerdekaan.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      value[4].done ? appLightBlue : appBlack,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ));
            },
          ),
        ),
      ),
    );
  }
}

class CurrentDragObj {
  Offset currentDragPos;
  Offset currentTouch;
  int indexArrayOnTouch;
  List<int> currentDragLine = new List<int>();

  CurrentDragObj({
    this.indexArrayOnTouch,
    this.currentTouch,
  });
}

class CrosswordAnswer {
  bool done = false;
  int indexArray;
  WSLocation wsLocation;
  List<int> answerLines;

  CrosswordAnswer(this.wsLocation, {int numPerRow}) {
    this.indexArray = this.wsLocation.y * numPerRow + this.wsLocation.x;
    generateAnswerLine(numPerRow);
  }
  void generateAnswerLine(int numPerRow) {
    this.answerLines = new List<int>();
    this.answerLines.addAll(List<int>.generate(this.wsLocation.overlap,
        (index) => generateIndexBaseOnAxis(this.wsLocation, index, numPerRow)));
  }

  generateIndexBaseOnAxis(WSLocation wsLocation, int i, int numPerRow) {
    int x = wsLocation.x, y = wsLocation.y;
    if (wsLocation.orientation == WSOrientation.horizontal ||
        wsLocation.orientation == WSOrientation.horizontalBack)
      x = (wsLocation.orientation == WSOrientation.horizontal) ? x + i : x - i;
    else
      y = (wsLocation.orientation == WSOrientation.vertical) ? y + i : y - i;

    return x + y * numPerRow;
  }
}
