// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/home/views/home_view.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/materi_controller.dart';

class MateriView extends GetView<MateriController> {
  const MateriView({Key key}) : super(key: key);
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
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 120),
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
                          Get.offAllNamed(Routes.PB1);
                        },
                      );
                    },
                    child: Container(
                      height: 70,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img/pb1.png"),
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
                          Get.offAllNamed(Routes.PB2);
                        },
                      );
                    },
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img/pb2.png"),
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
                          Get.offAllNamed(Routes.PB3);
                        },
                      );
                    },
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img/pb3.png"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
