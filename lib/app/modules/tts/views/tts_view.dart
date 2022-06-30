// ignore_for_file: prefer_const_constructors, unused_import

import 'package:crossword_mp/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:crossword_mp/app/modules/cwwidget.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';

import '../../../routes/app_pages.dart';
import '../controllers/tts_controller.dart';

class TtsView extends GetView<TtsController> {
  const TtsView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeView()),
        );
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 80),
              height: double.infinity,
              width: double.maxFinite,
              child: CrosswordWidget(),
            ),
            Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.only(left: 10, top: 30),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 120,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/img/i_game.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
