// ignore_for_file: prefer_const_constructors, unused_import, sort_child_properties_last

import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/home/views/home_view.dart';
import 'package:crossword_mp/app/modules/player.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/services.dart';
import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  LandingPageView({Key key}) : super(key: key);

  final aPlay = Get.find<APlayer>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
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
                    onTap: () => exit(0),
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
              height: Get.height,
              width: Get.width,
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
                    height: Get.height * 0.16,
                    width: Get.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/img/JUDUL.png',
                            ),
                            fit: BoxFit.contain)),
                  ),
                  Flexible(
                    child: BouncingWidget(
                      stayOnBottom: false,
                      onPressed: () {
                        Future.delayed(
                          Duration(milliseconds: 400),
                          () {
                            aPlay.clickPlay();
                            Get.offAllNamed(Routes.HOME);
                          },
                        );
                      },
                      scaleFactor: 2,
                      child: Container(
                        width: Get.width * 0.5,
                        height: Get.height * 0.15,
                        decoration: BoxDecoration(
                          //color: appRed,
                          image: DecorationImage(
                            image: AssetImage("assets/img/MULAI 1.png"),
                            fit: BoxFit.contain,
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
    );
  }
}
