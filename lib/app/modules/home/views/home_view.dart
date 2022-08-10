// ignore_for_file: unused_import

import 'dart:io';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/player.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key key}) : super(key: key);

  final aPlay = Get.find<APlayer>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return showDialog(
              context: context,
              builder: (context) => new AlertDialog(
                title: new Text('Are you sure?'),
                content: new Text('Do you want to exit'),
                actions: <Widget>[
                  new GestureDetector(
                    onTap: () => Navigator.of(context).pop(false),
                    child: Text("NO"),
                  ),
                  SizedBox(height: 30),
                  new GestureDetector(
                    onTap: () {
                      aPlay.stop();
                      exit(0);
                    },
                    child: Text("YES"),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ) ??
            false;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
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
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BouncingWidget(
                      stayOnBottom: false,
                      onPressed: () {
                        Future.delayed(
                          Duration(milliseconds: 300),
                          () {
                            aPlay.clickPlay();
                            return showDialog(
                                  context: context,
                                  builder: (context) => new AlertDialog(
                                    title: new Text('Are you sure?'),
                                    content: new Text('Do you want to exit'),
                                    actions: <Widget>[
                                      new GestureDetector(
                                        onTap: () =>
                                            Navigator.of(context).pop(false),
                                        child: Text("NO"),
                                      ),
                                      SizedBox(height: 30),
                                      new GestureDetector(
                                        onTap: () {
                                          aPlay.stop();
                                          exit(0);
                                        },
                                        child: Text("YES"),
                                      ),
                                      SizedBox(height: 30),
                                    ],
                                  ),
                                ) ??
                                false;
                          },
                        );
                      },
                      scaleFactor: 2,
                      child: Container(
                        height: Get.width * 0.13,
                        width: Get.width * 0.13,
                        margin: EdgeInsets.only(top: 30, bottom: 30),
                        decoration: BoxDecoration(
                          //color: appRed,
                          image: DecorationImage(
                            image: AssetImage('assets/img/OUT.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    BouncingWidget(
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
                        margin: EdgeInsets.only(
                            top: 30, right: 30, bottom: 30, left: 10),
                        decoration: BoxDecoration(
                          //color: appRed,
                          image: DecorationImage(
                            image: AssetImage('${aPlay.setImg()}'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                      Get.toNamed(Routes.PROFIL);
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
                      image: AssetImage('assets/img/TOMBOL PROFIL 1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: Get.height * 0.15,
                            margin: EdgeInsets.only(bottom: 30),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/img/menu 1.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: BouncingWidget(
                                  scaleFactor: 3,
                                  onPressed: () {
                                    Future.delayed(
                                      Duration(milliseconds: 400),
                                      () {
                                        aPlay.clickPlay();
                                        Get.toNamed(Routes.HELP);
                                      },
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: Get.width * 0.17,
                                        width: Get.width * 0.17,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/img/TOMBOL PETUNJUK 1.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        width: Get.width * 0.25,
                                        height: Get.width * 0.08,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: apppurp,
                                            border: Border.all(
                                                color: appWhite, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(90)),
                                        child: Text(
                                          "PETUNJUK",
                                          style: TextStyle(
                                              color: appWhite,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Flexible(
                                child: BouncingWidget(
                                  scaleFactor: 3,
                                  onPressed: () {
                                    Future.delayed(
                                      Duration(milliseconds: 300),
                                      () {
                                        aPlay.clickPlay();
                                        Get.toNamed(Routes.MATERI);
                                      },
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: Get.width * 0.17,
                                        width: Get.width * 0.17,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/img/TOMBOL MATERI 1.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        width: Get.width * 0.25,
                                        height: Get.width * 0.08,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: apppurp,
                                            border: Border.all(
                                                color: appWhite, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(90)),
                                        child: Text(
                                          "MATERI",
                                          style: TextStyle(
                                              color: appWhite,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: BouncingWidget(
                                    scaleFactor: 3,
                                    onPressed: (() {
                                      Future.delayed(
                                        Duration(milliseconds: 300),
                                        () {
                                          aPlay.clickPlay();
                                          Get.toNamed(Routes.KDKI);
                                        },
                                      );
                                    }),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          height: Get.width * 0.17,
                                          width: Get.width * 0.17,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/img/TOMBOL KDKI 1.png"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          width: Get.width * 0.25,
                                          height: Get.width * 0.08,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: apppurp,
                                              border: Border.all(
                                                  color: appWhite, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(90)),
                                          child: Text(
                                            "KD & KI",
                                            style: TextStyle(
                                                color: appWhite,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Flexible(
                                  child: BouncingWidget(
                                    scaleFactor: 3,
                                    onPressed: () {
                                      Future.delayed(
                                        Duration(milliseconds: 300),
                                        () {
                                          aPlay.clickPlay();
                                          Get.toNamed(Routes.GAME_HOME);
                                        },
                                      );
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          height: Get.width * 0.17,
                                          width: Get.width * 0.17,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/img/TOMBOL GAME 1.png"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          width: Get.width * 0.25,
                                          height: Get.width * 0.08,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: apppurp,
                                              border: Border.all(
                                                  color: appWhite, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(90)),
                                          child: Text(
                                            "GAME",
                                            style: TextStyle(
                                                color: appWhite,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
