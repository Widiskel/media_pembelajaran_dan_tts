import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/home/views/home_view.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/materi_controller.dart';

class MateriView extends GetView<MateriController> {
  const MateriView({Key key}) : super(key: key);
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
              alignment: Alignment.center,
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            BouncingWidget(
                              scaleFactor: 3,
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
                                margin: EdgeInsets.all(10),
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
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: appBlue,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/img/materi.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    height: Get.height - Get.width,
                    width: 400,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: appWhite.withOpacity(0.5)),
                    child: GridView(
                      padding: EdgeInsets.zero,
                      physics: ScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 5 / 1.2,
                        crossAxisCount: 1,
                        mainAxisSpacing: 40,
                      ),
                      children: [
                        BouncingWidget(
                          scaleFactor: 3,
                          onPressed: () {
                            Future.delayed(
                              Duration(milliseconds: 300),
                              () {},
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/img/ipa.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        BouncingWidget(
                          scaleFactor: 3,
                          onPressed: () {
                            Future.delayed(
                              Duration(milliseconds: 300),
                              () {},
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/img/ips.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        BouncingWidget(
                          scaleFactor: 3,
                          onPressed: () {
                            Future.delayed(
                              Duration(milliseconds: 300),
                              () {},
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/img/SBDP.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        BouncingWidget(
                          scaleFactor: 3,
                          onPressed: () {
                            Future.delayed(
                              Duration(milliseconds: 300),
                              () {},
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/img/t_bi.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        BouncingWidget(
                          scaleFactor: 3,
                          onPressed: () {
                            Future.delayed(
                              Duration(milliseconds: 300),
                              () {},
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/img/PPKN.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
