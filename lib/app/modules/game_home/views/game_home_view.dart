// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/player.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_home_controller.dart';

class GameHomeView extends GetView<GameHomeController> {
  GameHomeView({Key key}) : super(key: key);
  final aPlay = Get.find<APlayer>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.toNamed(Routes.HOME);
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/bg 1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Obx(
              () => Align(
                alignment: Alignment.topRight,
                child: BouncingWidget(
                  stayOnBottom: false,
                  onPressed: () {
                    Future.delayed(
                      Duration(milliseconds: 300),
                      () {
                        aPlay.butstat.toggle();
                        aPlay.bgmPlayorPause();
                      },
                    );
                  },
                  scaleFactor: 2,
                  child: Container(
                    height: Get.width * 0.13,
                    width: Get.width * 0.13,
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      //color: appRed,
                      image: DecorationImage(
                        image: AssetImage('${aPlay.setImg()}'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: BouncingWidget(
                stayOnBottom: false,
                onPressed: () {
                  Future.delayed(
                    Duration(milliseconds: 400),
                    () {
                      aPlay.clickPlay();
                      Get.toNamed(Routes.HOME);
                    },
                  );
                },
                scaleFactor: 2,
                child: Container(
                  height: Get.width * 0.13,
                  width: Get.width * 0.13,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    //color: appRed,
                    image: DecorationImage(
                      image: AssetImage('assets/img/TOMBOL HOME 1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: Get.height * 0.7,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 40, right: 40),
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: Get.height * 0.15,
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/img/gaame 1.png'),
                            fit: BoxFit.contain),
                      ),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          Flexible(
                            child: BouncingWidget(
                              scaleFactor: 2,
                              onPressed: () {
                                Future.delayed(
                                  Duration(milliseconds: 300),
                                  () {
                                    aPlay.clickPlay();
                                    Get.toNamed(Routes.TTS);
                                  },
                                );
                              },
                              child: Container(
                                height: 60,
                                width: Get.width,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/img/GAME PEMBELAJARAN 1 1.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          Flexible(
                            child: BouncingWidget(
                              scaleFactor: 2,
                              onPressed: () {
                                Future.delayed(
                                  Duration(milliseconds: 300),
                                  () {
                                    aPlay.clickPlay();
                                    Get.toNamed(Routes.TTS2);
                                  },
                                );
                              },
                              child: Container(
                                height: 60,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/img/GAME PEMBELAJARAN 2 1.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          Flexible(
                            child: BouncingWidget(
                              scaleFactor: 2,
                              onPressed: () {
                                Future.delayed(
                                  Duration(milliseconds: 300),
                                  () {
                                    aPlay.clickPlay();
                                    Get.toNamed(Routes.TTS3);
                                  },
                                );
                              },
                              child: Container(
                                height: 60,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/img/GAME PEMBELAJARAN 3 1.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
