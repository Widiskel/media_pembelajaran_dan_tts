import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/bg.png"), fit: BoxFit.cover),
              ),
            ),
            Center(
              child: Container(
                  width: Get.width,
                  height: Get.height,
                  padding: EdgeInsets.only(bottom: Get.height * 0.15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: SizedBox(
                          child: Lottie.asset("assets/lotties/load.json"),
                        ),
                      ),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Loading",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: appOldBlue),
                            ),
                            SizedBox(
                              height: Get.height * 0.1,
                              child: Lottie.asset(
                                  "assets/lotties/98432-loading.json"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
