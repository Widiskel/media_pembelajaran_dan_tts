import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class APlayer extends GetxController {
  final playerclick = new AudioPlayer(playerId: 'click_id');
  final playerbgm = new AudioPlayer(playerId: 'bgm_id');
  final playerCgts = new AudioPlayer(playerId: 'cgts_id');

  RxBool butstat = false.obs;
  String setImg() {
    String imgSource = "";
    butstat.isFalse
        ? imgSource = 'assets/img/musik mati.png'
        : imgSource = 'assets/img/musik 1.png';
    print(imgSource);
    return imgSource;
  }

  final StreamController<PlayerState> _playerStateController =
      StreamController<PlayerState>.broadcast();
  Stream<PlayerState> get onPlayerStateChanged => _playerStateController.stream;

  Source click = AssetSource('sound/click.wav');
  Source bgm = AssetSource('sound/bgm.wav');
  Source cgts = AssetSource('sound/cgt.wav');

  void bgmPlayorPause() async {
    PlayerState cs = playerbgm.state;
    print("Play state : ${playerbgm.state}, player id ${playerbgm.playerId}");
    if (cs.toString() == "PlayerState.stopped") {
      print("lets play");
      await playerbgm.play(bgm);
      await playerbgm.setReleaseMode(ReleaseMode.loop);
      await playerbgm.setVolume(0.8);
    } else if (cs.toString() == "PlayerState.playing") {
      print("hope this will stop");
      await playerbgm.pause();
    } else {
      print("lets resume");
      await playerbgm.resume();
    }
  }

  void stop() async {
    await playerbgm.stop();
    await playerCgts.stop();
    await playerclick.stop();
    playerbgm.dispose();
    playerCgts.dispose();
    playerclick.dispose();
  }

  void clickPlay() async {
    await playerclick.stop();
    await playerclick.play(click);
  }

  void congrats() async {
    await playerclick.stop();
    await playerclick.play(cgts);
  }
}
