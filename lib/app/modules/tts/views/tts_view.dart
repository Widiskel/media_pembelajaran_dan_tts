// ignore_for_file: prefer_const_constructors, unused_import

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/game_home/views/game_home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:crossword_mp/app/modules/tts/widget/cwwidget.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';

import '../../../routes/app_pages.dart';
import '../../player.dart';
import '../controllers/tts_controller.dart';

class TtsView extends GetView<TtsController> {
  TtsView({Key key}) : super(key: key);
  final aPlay = Get.find<APlayer>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () async {
        Get.toNamed(Routes.GAME_HOME);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              child: Container(
                child: Row(
                  children: [
                    BouncingWidget(
                      stayOnBottom: false,
                      onPressed: () {
                        Future.delayed(
                          Duration(milliseconds: 400),
                          () {
                            aPlay.clickPlay();
                            Get.back();
                          },
                        );
                      },
                      scaleFactor: 2,
                      child: Container(
                        height: Get.width * 0.13,
                        width: Get.width * 0.13,
                        margin: EdgeInsets.only(top: 30, left: 30, bottom: 30),
                        decoration: BoxDecoration(
                          //color: appRed,
                          image: DecorationImage(
                            image: AssetImage('assets/img/back 1.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    BouncingWidget(
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
                        margin: EdgeInsets.only(top: 30, bottom: 30, left: 10),
                        decoration: BoxDecoration(
                          //color: appRed,
                          image: DecorationImage(
                            image: AssetImage('assets/img/TOMBOL HOME 1.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: Get.height * 0.9,
              margin: EdgeInsets.only(top: Get.height * 0.13),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    height: Get.height * 0.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/gaame 1.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: Get.height * 0.8,
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, bottom: 10, top: 0),
                        height: double.infinity,
                        width: double.maxFinite,
                        child: CrosswordWidget(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
