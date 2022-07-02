// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/materi/views/materi_view.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pb2_controller.dart';

class Pb2View extends GetView<Pb2Controller> {
  const Pb2View({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MateriView()),
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
                  Get.offAllNamed(Routes.MATERI);
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
            margin: EdgeInsets.only(top: 100),
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/pb2.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 190),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: appWhite.withOpacity(0.5),
            ),
            child: Column(
              children: [
                Flexible(
                  child: BouncingWidget(
                    scaleFactor: 2,
                    onPressed: () {
                      Future.delayed(
                        Duration(milliseconds: 300),
                        () {
                          Get.offAndToNamed(Routes.PB2_IPS);
                        },
                      );
                    },
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/ips.png'),
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
                          Get.offAllNamed(Routes.PB2_IPA);
                        },
                      );
                    },
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/ipa.png'),
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
                          Get.offAllNamed(Routes.PB2_SBDP);
                        },
                      );
                    },
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/SBDP.png'),
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
