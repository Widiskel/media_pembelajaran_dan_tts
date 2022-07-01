import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_home_controller.dart';

class GameHomeView extends GetView<GameHomeController> {
  const GameHomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Container(
              color: appRed.withOpacity(0.3),
              child: Container(
                height: 60,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/img/g_pb1.png"),
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
            ),
          ],
        )
      ],
    ));
  }
}
