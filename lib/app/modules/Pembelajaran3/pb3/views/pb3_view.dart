// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/player.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pb3_controller.dart';

class Pb3View extends GetView<Pb3Controller> {
  Pb3View({Key key}) : super(key: key);
  final aPlay = Get.find<APlayer>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50,
                  margin: EdgeInsets.only(
                    left: Get.width * 0.15,
                    right: Get.width * 0.15,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/pembelajaran 3.3.png'),
                        fit: BoxFit.contain),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Get.width * 0.15,
                    right: Get.width * 0.15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: appWhite.withOpacity(0.46), width: 20),
                    borderRadius: BorderRadius.circular(30),
                    color: appGrey.withOpacity(0.69),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: BouncingWidget(
                          scaleFactor: 2,
                          onPressed: () {
                            Future.delayed(
                              Duration(milliseconds: 300),
                              () {
                                aPlay.clickPlay();
                                Get.toNamed(Routes.PB3_PPKN);
                              },
                            );
                          },
                          child: Container(
                            height: 55,
                            margin:
                                EdgeInsets.only(left: 30, right: 30, top: 20),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/img/ips 1.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: BouncingWidget(
                          scaleFactor: 2,
                          onPressed: () {
                            Future.delayed(
                              Duration(milliseconds: 300),
                              () {
                                aPlay.clickPlay();
                                Get.toNamed(Routes.PB3_PPKN2);
                              },
                            );
                          },
                          child: Container(
                            height: 55,
                            margin:
                                EdgeInsets.only(left: 30, right: 30, top: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/img/bahasa indonesia 1.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: BouncingWidget(
                          scaleFactor: 2,
                          onPressed: () {
                            Future.delayed(
                              Duration(milliseconds: 300),
                              () {
                                aPlay.clickPlay();
                                Get.toNamed(Routes.PB3_PPKN3);
                              },
                            );
                          },
                          child: Container(
                            height: 55,
                            margin: EdgeInsets.only(
                                left: 30, right: 30, top: 10, bottom: 20),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/img/PPKN 1.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
