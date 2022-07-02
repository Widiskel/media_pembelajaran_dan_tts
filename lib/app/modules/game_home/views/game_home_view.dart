// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/home/views/home_view.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_home_controller.dart';

class GameHomeView extends GetView<GameHomeController> {
  const GameHomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeView()),
        );
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/Bg1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            BouncingWidget(
              scaleFactor: 2,
              onPressed: () {
                Future.delayed(
                  Duration(milliseconds: 300),
                  () {
                    Get.offAllNamed(Routes.HOME);
                  },
                );
              },
              child: Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.only(left: 10, top: 30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/back.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin:
                  EdgeInsets.only(left: 50, right: 50, top: 190, bottom: 30),
              decoration: BoxDecoration(
                color: appWhite.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Flexible(
                    child: BouncingWidget(
                      scaleFactor: 2,
                      onPressed: () {
                        Future.delayed(
                          Duration(milliseconds: 300),
                          () {
                            Get.offAllNamed(Routes.TTS);
                          },
                        );
                      },
                      child: Container(
                        height: 65,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/img/gpb1.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: BouncingWidget(
                      scaleFactor: 2,
                      onPressed: () {
                        Future.delayed(
                          Duration(milliseconds: 300),
                          () {
                            Get.offAllNamed(Routes.TTS2);
                          },
                        );
                      },
                      child: Container(
                        height: 65,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/img/gpb2.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: BouncingWidget(
                      scaleFactor: 2,
                      onPressed: () {
                        Future.delayed(
                          Duration(milliseconds: 300),
                          () {
                            Get.offAllNamed(Routes.TTS3);
                          },
                        );
                      },
                      child: Container(
                        height: 65,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/img/gpb2.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/ogame.png"),
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
      ),
    );
  }
}
