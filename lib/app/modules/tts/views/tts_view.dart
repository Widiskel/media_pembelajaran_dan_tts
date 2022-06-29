// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:media_pembelajaran_dan_tts/app/modules/cwwidget.dart';
import 'package:media_pembelajaran_dan_tts/app/pallete/color_pallete.dart';

import '../../../routes/app_pages.dart';
import '../controllers/tts_controller.dart';

class TtsView extends GetView<TtsController> {
  const TtsView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 30),
              height: 600,
              width: double.maxFinite,
              child: CrosswordWidget(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 60,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/img/game.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  width: 1,
                ),
                image: DecorationImage(
                  image: AssetImage("assets/img/back.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () => Get.offAllNamed(Routes.HOME),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
