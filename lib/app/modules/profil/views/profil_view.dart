import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  ProfilView({Key key}) : super(key: key);

  final aPlay = Get.find<APlayer>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () async {
        Get.back();
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
                  image: AssetImage("assets/img/bg 1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Obx(
              () => Align(
                alignment: Alignment.topRight,
                child: BouncingWidget(
                  stayOnBottom: false,
                  onPressed: () {
                    Future.delayed(
                      Duration(milliseconds: 300),
                      () {
                        aPlay.butstat.toggle();
                        aPlay.bgmPlayorPause();
                      },
                    );
                  },
                  scaleFactor: 2,
                  child: Container(
                    height: Get.width * 0.13,
                    width: Get.width * 0.13,
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      //color: appRed,
                      image: DecorationImage(
                        image: AssetImage('${aPlay.setImg()}'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: BouncingWidget(
                stayOnBottom: false,
                onPressed: () {
                  Future.delayed(
                    Duration(milliseconds: 400),
                    () {
                      aPlay.clickPlay();
                      Get.back();
                    },
                  );
                },
                scaleFactor: 2,
                child: Container(
                  height: Get.width * 0.13,
                  width: Get.width * 0.13,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    //color: appRed,
                    image: DecorationImage(
                      image: AssetImage('assets/img/TOMBOL HOME 1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: Get.height * 0.2,
                bottom: 30,
              ),
              child: Stack(
                children: [
                  Container(
                    width: Get.width,
                    margin: EdgeInsets.only(
                        top: 40, bottom: 20, right: 30, left: 30),
                    decoration: BoxDecoration(
                      color: appWhite,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: appOrange, width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 40,
                        bottom: 30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama       :  Imamia",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Nim          :  180611100167",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "TTL           :   Duri, 5 April 1999",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Alamat     :   Dsn Karangan,\n                     Ds Tanggumong. ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Motto       :  Jika orang lain bisa, kita juga pasti bisa.",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Dosen Pembimbing       :  Ana Naimatul Jannah, S.Pd., M.Pd.",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: Get.width,
                            color: appLightRed,
                            margin: EdgeInsets.only(top: 30, bottom: 10),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(FontAwesomeIcons.instagram,
                                    color: appWhite, size: 16.0),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Imamia54",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: appWhite,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: Get.width,
                            color: appLightRed,
                            margin: EdgeInsets.only(top: 5, bottom: 10),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(FontAwesomeIcons.facebook,
                                    color: appWhite, size: 16.0),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Imamia",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: appWhite,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: Get.width,
                            color: appLightRed,
                            margin: EdgeInsets.only(top: 5, bottom: 10),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.mail_rounded,
                                    color: appWhite, size: 16.0),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "imamiaaa@gmail.com",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: appWhite,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      backgroundColor: appOrange,
                      radius: Get.width * 0.187,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/img/mia.jpeg'), //NetworkImage
                        radius: Get.width * 0.18,
                      ), //CircleAvatar
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
