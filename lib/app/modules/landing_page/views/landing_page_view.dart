// ignore_for_file: prefer_const_constructors, unused_import, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:media_pembelajaran_dan_tts/app/pallete/color_pallete.dart';
import 'package:media_pembelajaran_dan_tts/app/routes/app_pages.dart';

import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({Key? key}) : super(key: key);
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: const [appRed, appWhite]),
                ),
                child: Center(
                  child: Text(
                    "Mulai",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () => Get.offAllNamed(Routes.TTS),
            //   child: Text(
            //     "Mulai",
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   style: ElevatedButton.styleFrom(
            //       primary: Colors.red,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(30)),
            //       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
            // ),
          ],
        ),
      ),
    );
  }
}
