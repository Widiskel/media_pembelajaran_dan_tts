// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:media_pembelajaran_dan_tts/app/modules/CrossWordWidget.dart';
import 'package:media_pembelajaran_dan_tts/app/pallete/color_pallete.dart';

import '../controllers/tts_controller.dart';

class TtsView extends GetView<TtsController> {
  const TtsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Icon(Icons.videogame_asset_rounded, size: 100, color: Colors.red),
            CrosswordWidget(),
          ],
        ),
      ),
    );
  }
}
