// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:media_pembelajaran_dan_tts/app/pallete/color_pallete.dart';

import '../controllers/tts_controller.dart';

class TtsView extends GetView<TtsController> {
  const TtsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Icon(
                Icons.videogame_asset_rounded,
                color: appBlue,
                size: 100,
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: Get.width,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: appWhite,
                      ),
                      child: Text(""),
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
