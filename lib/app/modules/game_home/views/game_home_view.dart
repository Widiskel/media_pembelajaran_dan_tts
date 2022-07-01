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
          Column(
            children: [
              Container(
                height: 60,
                width: 120,
                margin: EdgeInsets.only(top: 100),
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
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
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
                            height: 60,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/img/gpb1.png"),
                                fit: BoxFit.fill,
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
                              () {},
                            );
                          },
                          child: Container(
                            height: 60,
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/img/gpb2.png"),
                                fit: BoxFit.fill,
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
                              () {},
                            );
                          },
                          child: Container(
                            height: 60,
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/img/gpb3.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
