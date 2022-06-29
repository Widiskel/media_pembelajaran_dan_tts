// ignore_for_file: import_of_legacy_library_into_null_safe, unused_element, unused_local_variable, deprecated_member_use, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:media_pembelajaran_dan_tts/app/pallete/color_pallete.dart';
import 'package:word_search/word_search.dart';

class CrosswordWidget extends StatefulWidget {
  CrosswordWidget({Key? key}) : super(key: key);

  @override
  _CrosswordWidgetState createState() => _CrosswordWidgetState();
}

class _CrosswordWidgetState extends State<CrosswordWidget> {
  int baris = 5;
  int kolom = 5;
  double padding = 5;
  double margin = 50;
  Size sizeBox = Size.zero;
  late ValueNotifier<List<List<String>>> listChars;
  late ValueNotifier<List<CrosswordAnswer>> answerList;
  late ValueNotifier<CurrentDragObj> currentDragObj;
  @override
  void initState() {
    super.initState();
    listChars = new ValueNotifier<List<List<String>>>([]);
    answerList = new ValueNotifier<List<CrosswordAnswer>>([]);
    generatereRandomWord();
  }

  @override
  Widget build(BuildContext context) {
    //getsize
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Container(
        child: Wrap(
          children: [
            //crossword
            Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              height: margin * 5 - padding * 4,
              padding: EdgeInsets.all(padding),
              margin: EdgeInsets.all(margin),
              color: appLightBlue,
              child: drawCrosswordBox(),
            ),
            Container(
              alignment: Alignment.center,
              child: drawAnswerList(),
            ),
          ],
        ),
      ),
    );
  }

  void onDragEnd(PointerUpEvent event) {
    print("up");
    if (currentDragObj.value.currentDragLine == null) return;

    currentDragObj.value.currentDragLine.clear();
    currentDragObj.notifyListeners();
  }

  void onDragUpdate(PointerMoveEvent event) {
    print("move");
    generateLineOnDrag(event);
  }

  int calculateIndexBasePosLocal(Offset localPosition) {
    double maxSizebox = ((sizeBox.width - (kolom - 1) * padding));
    if (localPosition.dy > sizeBox.width || localPosition.dx > sizeBox.width)
      return -1;
    int x = 0, y = 0;
    double yAxis = 0, xAxis = 0;
    double yAxisStart = 0, xAxisStart = 0;

    for (var i = 0; i < kolom; i++) {
      xAxisStart = xAxis;
      xAxis +=
          maxSizebox + (i == 0 || i == (kolom - 1) ? padding / 2 : padding);

      if (xAxisStart < localPosition.dx && xAxis > localPosition.dx) {
        x = 1;
        break;
      }
    }
    for (var i = 0; i < kolom; i++) {
      yAxisStart = yAxis;
      yAxis +=
          maxSizebox + (i == 0 || i == (kolom - 1) ? padding / 2 : padding);

      if (xAxisStart < localPosition.dy && xAxis > localPosition.dy) {
        y = 1;
        break;
      }
    }
    return y * kolom + x;
  }

  void generateLineOnDrag(PointerMoveEvent event) {
    if (currentDragObj.value.currentDragLine == null)
      currentDragObj.value.currentDragLine = <int>[];
  }

  void onDragStart(int indexArray) {
    try {
      List<CrosswordAnswer> indexSelecteds = answerList.value
          .where((answer) => answer.indexArray == indexArray)
          .toList();
      if (indexSelecteds.length == 0) return;
      print("PointerDownEvent");
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
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
              crossAxisCount: baris,
              crossAxisSpacing: padding,
              mainAxisSpacing: padding,
            ),
            itemCount: baris * kolom,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              String char = listChars.value.expand((e) => e).toList()[index];
              return Listener(
                onPointerDown: (event) => onDragStart(index),
                child: Container(
                  color: appLightRed,
                  alignment: Alignment.center,
                  child: Text(
                    char.toUpperCase(),
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void generatereRandomWord() {
    final List<String> answer = ["Bumi", "Korek", "Bulat"];

    final WSSettings ws = WSSettings(
      width: baris,
      height: kolom,
      orientations: List.from([
        WSOrientation.horizontal,
        WSOrientation.horizontalBack,
        WSOrientation.vertical,
        WSOrientation.verticalUp,
      ]),
    );

    final WordSearch wordSearch = WordSearch();

    // Create a new puzzle
    final WSNewPuzzle newPuzzle = wordSearch.newPuzzle(answer, ws);

    if (newPuzzle.errors.isEmpty) {
      listChars.value = newPuzzle.puzzle;

      final WSSolved solved = wordSearch.solvePuzzle(newPuzzle.puzzle, answer);
      answerList.value = solved.found
          .map((solve) => new CrosswordAnswer(solve, numPerRow: baris))
          .toList();
    }
  }

  drawAnswerList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: appWhite.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: appBlack, width: 3)),
        child: ValueListenableBuilder(
          valueListenable: answerList,
          builder: (context, List<CrosswordAnswer> value, child) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //get val value[0].wsLocation.word
                  children: [
                    Text(
                      '1. Apa nama planet yang kita tinggali saat ini ?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: value[0].done ? appLightBlue : appBlack,
                      ),
                    ),
                    Text(
                        '2. Apa nama benda yang digunakan untuk membakar sesuatu ?',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: value[1].done ? appLightBlue : appBlack,
                        )),
                    Text('3. Seperti apakah bentuk bumi planet itu ?',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: value[2].done ? appLightBlue : appBlack,
                        )),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CurrentDragObj {
  late Offset currentDragPos;
  Offset currentTouch;
  int indexArrayOnTouch;
  List<int> currentDragLine = <int>[];

  CurrentDragObj({
    required this.indexArrayOnTouch,
    required this.currentTouch,
  });
}

class CrosswordAnswer {
  bool done = false;
  late int indexArray;
  WSLocation wsLocation;
  late List<int> answerLines;
  CrosswordAnswer(this.wsLocation, {required int numPerRow}) {
    this.indexArray = this.wsLocation.y * numPerRow + this.wsLocation.x;
    generateAnswerLine(numPerRow);
  }
  void generateAnswerLine(int numPerRow) {
    this.answerLines = <int>[];

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
