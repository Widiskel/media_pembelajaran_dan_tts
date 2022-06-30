// ignore_for_file: prefer_const_constructors, unused_import, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/services.dart';
import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({Key key}) : super(key: key);
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
                    onTap: () => Navigator.of(context).pop(true),
                    child: Text("YES"),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ) ??
            false;
      },
      child: Scaffold(
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/bg.png"),
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
                      image: DecorationImage(
                        image: AssetImage("assets/img/start.png"),
                      ),
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
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => Get.offAllNamed(Routes.HOME),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
