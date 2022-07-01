// ignore_for_file: unused_import

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key key}) : super(key: key);
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
        body: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/Bg1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: 32, right: 32, top: 120, bottom: 125),
              decoration: BoxDecoration(
                  color: appWhite.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(80)),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: 30, right: 30, top: 120, bottom: 120),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/bingkai.png'),
                    fit: BoxFit.fill),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: BouncingWidget(
                            scaleFactor: 3,
                            onPressed: () {
                              Future.delayed(
                                Duration(milliseconds: 400),
                                () {},
                              );
                            },
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img/t_ptjk.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Flexible(
                          child: BouncingWidget(
                            scaleFactor: 3,
                            onPressed: () {
                              Future.delayed(
                                Duration(milliseconds: 300),
                                () {},
                              );
                            },
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img/kd.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: BouncingWidget(
                            scaleFactor: 3,
                            onPressed: (() {
                              Future.delayed(
                                Duration(milliseconds: 300),
                                () {
                                  Get.offAllNamed(Routes.MATERI);
                                },
                              );
                            }),
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img/t_materi.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        //game
                        Flexible(
                          child: BouncingWidget(
                            scaleFactor: 3,
                            onPressed: () {
                              Future.delayed(
                                Duration(milliseconds: 300),
                                () {
                                  Get.offAllNamed(Routes.GAME_HOME);
                                },
                              );
                            },
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img/t_game.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //profil
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              alignment: Alignment.bottomCenter,
              child: BouncingWidget(
                scaleFactor: 3,
                onPressed: () {
                  Future.delayed(
                    Duration(milliseconds: 300),
                    () {
                      Get.offAllNamed(Routes.PROFIL);
                    },
                  );
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/img/prof.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 110),
              alignment: Alignment.topCenter,
              child: Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/men.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
