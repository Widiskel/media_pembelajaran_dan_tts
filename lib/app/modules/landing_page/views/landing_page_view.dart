// ignore_for_file: prefer_const_constructors, unused_import, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:media_pembelajaran_dan_tts/app/pallete/color_pallete.dart';
import 'package:media_pembelajaran_dan_tts/app/routes/app_pages.dart';

import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({Key key}) : super(key: key);
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
            InkWell(
              onTap: () => Get.offAllNamed(Routes.TTS),
              child: Container(
                width: 149,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 2,
                  ),
                  gradient: LinearGradient(
                      begin: Alignment(6.123234262925839e-17, 1),
                      end: Alignment(-1, 6.123234262925839e-17),
                      colors: [
                        Color.fromRGBO(255, 0, 0, 1),
                        Color.fromRGBO(255, 255, 255, 1)
                      ]),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Mulai",
                    style: TextStyle(
                      color: appWhite,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () => Get.offAllNamed(Routes.TTS),

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
