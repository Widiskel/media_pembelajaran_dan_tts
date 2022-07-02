// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/home/views/home_view.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kdki_controller.dart';

class KdkiView extends GetView<KdkiController> {
  const KdkiView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => (WillPopScope(
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
                width: double.maxFinite,
                height: double.maxFinite,
                margin:
                    EdgeInsets.only(left: 32, right: 32, top: 95, bottom: 85),
                decoration: BoxDecoration(
                    color: appWhite.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(60)),
                child: kdki(),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 30, right: 30, top: 90, bottom: 80),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/bingkai.png'),
                      fit: BoxFit.fill),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Container(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: BouncingWidget(
                              scaleFactor: 2,
                              onPressed: () {
                                Future.delayed(
                                  Duration(milliseconds: 300),
                                  () {
                                    controller.kdorki.value = 1;
                                    kdki();
                                  },
                                );
                              },
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/t_kd.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Flexible(
                            child: BouncingWidget(
                              onPressed: () {
                                Future.delayed(
                                  Duration(milliseconds: 300),
                                  () {
                                    controller.kdorki.value = 2;
                                    kdki();
                                  },
                                );
                              },
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/t_ki.png'),
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
          ),
        ),
      )),
    );
  }

  kdki() {
    print(controller.kdorki);
    if (controller.kdorki == 1) {
      return Container(
        margin: EdgeInsets.all(30),
        alignment: Alignment.center,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Text(
          'ini kd',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.all(30),
        alignment: Alignment.center,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Text(
          'ini ki',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      );
    }
  }
}
