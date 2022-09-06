import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/player.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../controllers/help_controller.dart';

class HelpView extends GetView<HelpController> {
  HelpView({Key key}) : super(key: key);
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
              decoration: BoxDecoration(
                color: appWhite.withOpacity(0.35),
                border: Border.all(color: appRed, width: 3),
                borderRadius: BorderRadius.circular(30),
              ),
              width: Get.width,
              height: Get.height,
              margin: EdgeInsets.only(
                  left: 20, right: 20, bottom: 20, top: Get.height * 0.15),
              child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(
                    children: [
                      Scrollbar(
                        thickness: 100,
                        thumbVisibility: true,
                        child: StickyHeader(
                          header: Container(
                            height: Get.height * 0.1,
                            decoration: BoxDecoration(
                              color: appLightRed,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'PETUNJUK',
                              style: const TextStyle(
                                  color: appBlack,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          content: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appLightRed, width: 2),
                                    borderRadius: BorderRadius.circular(30)),
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Get.width,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: appLightRed,
                                          borderRadius:
                                              BorderRadius.circular(90)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Navigasi",
                                        style: const TextStyle(
                                            color: appBlack,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/back 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Tombol KEMBALI : Digunakan untuk kembali ke halaman sebelumnya",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/TOMBOL HOME 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Tombol RUMAH : Digunakan untuk kembali ke halaman/menu utama",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //
                              //
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appLightRed, width: 2),
                                    borderRadius: BorderRadius.circular(30)),
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Get.width,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: appLightRed,
                                          borderRadius:
                                              BorderRadius.circular(90)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Audio",
                                        style: const TextStyle(
                                            color: appBlack,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/musik 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Tombol MAINKAN : Digunakan untuk memainkan suara latar belakang",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/musik mati.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Tombol BERHENTI : Digunakan menghentikan suara latar belakang",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //
                              //
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appLightRed, width: 2),
                                    borderRadius: BorderRadius.circular(30)),
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Get.width,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: appLightRed,
                                          borderRadius:
                                              BorderRadius.circular(90)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Menu",
                                        style: const TextStyle(
                                            color: appBlack,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/TOMBOL PETUNJUK 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Tombol PETUNJUK : Digunakan untuk menuju ke halaman petunjuk",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/TOMBOL MATERI 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Tombol MATERI : Digunakan untuk menuju ke halaman materi",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/TOMBOL KDKI 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Tombol KD&KI : Digunakan untuk menuju ke halaman KD & KI",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/TOMBOL GAME 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Tombol PERMAINAN : Digunakan untuk menuju ke halaman PERMAINAN",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //
                              //
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appLightRed, width: 2),
                                    borderRadius: BorderRadius.circular(30)),
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Get.width,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: appLightRed,
                                          borderRadius:
                                              BorderRadius.circular(90)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Halaman",
                                        style: const TextStyle(
                                            color: appBlack,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/TOMBOL PETUNJUK 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Halaman PETUNJUK : Halaman yang berisi petunjuk penggunaan aplikasi",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/MATERI.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Halaman MATERI : Halaman yang berisi materi pembelajaran",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/TOMBOL KDKI 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Halaman KD&KI : Halaman yang menjelaskan tentang kompetensi dasar dan kompetensi inti",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.06,
                                              width: Get.height * 0.06,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/gaame 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Halaman PERMAINAN : Halaman yang berisi game pembelajaran yang berhubungan dengan materi",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //
                              //
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appLightRed, width: 2),
                                    borderRadius: BorderRadius.circular(30)),
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Get.width,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: appLightRed,
                                          borderRadius:
                                              BorderRadius.circular(90)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Materi",
                                        style: const TextStyle(
                                            color: appBlack,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.1,
                                              width: Get.height * 0.2,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/PEMBELAJARAN 1 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Muatan : ",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 5,
                                                    horizontal: 10),
                                                height: Get.height * 0.2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/img/bahasa indonesia 1.png'),
                                                      fit: BoxFit.contain),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 5,
                                                    horizontal: 10),
                                                height: Get.height * 0.2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/img/ipa 1.png'),
                                                      fit: BoxFit.contain),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 5,
                                                    horizontal: 10),
                                                height: Get.height * 0.2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/img/ips 1.png'),
                                                      fit: BoxFit.contain),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    //
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.1,
                                              width: Get.height * 0.2,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/PEMBELAJARAN 2 1.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Muatan : ",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 5,
                                                    horizontal: 10),
                                                height: Get.height * 0.2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/img/bahasa indonesia 1.png'),
                                                      fit: BoxFit.contain),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 5,
                                                    horizontal: 10),
                                                height: Get.height * 0.2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/img/ipa 1.png'),
                                                      fit: BoxFit.contain),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 5,
                                                    horizontal: 10),
                                                height: Get.height * 0.2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/img/SBDP 1.png'),
                                                      fit: BoxFit.contain),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    //
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              height: Get.height * 0.1,
                                              width: Get.height * 0.2,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/img/PEMBELAJARAN 3 3.png'),
                                                    fit: BoxFit.contain),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Muatan : ",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 5,
                                                    horizontal: 10),
                                                height: Get.height * 0.2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/img/ips 1.png'),
                                                      fit: BoxFit.contain),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 5,
                                                    horizontal: 10),
                                                height: Get.height * 0.2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/img/bahasa indonesia 1.png'),
                                                      fit: BoxFit.contain),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 5,
                                                    horizontal: 10),
                                                height: Get.height * 0.2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/img/PPKN 1.png'),
                                                      fit: BoxFit.contain),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appLightRed, width: 2),
                                    borderRadius: BorderRadius.circular(30)),
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Get.width,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: appLightRed,
                                          borderRadius:
                                              BorderRadius.circular(90)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "PERMAINAN",
                                        style: const TextStyle(
                                            color: appBlack,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.all(15),
                                          child: Text(
                                              """Petunjuk memainkan permainan:
1.  Gulung ke atas atau ke bawah pada kotak pertanyaan untuk melihat semua daftar pertanyaan.
2.  Jika sudah menemukan jawaban dari pertanyaan, cari jawaban pada kotak puzzle.
3.  Untuk menjawab, tekan dan tahan kotak puzzle dari huruf pertama hingga huruf terahir atau sebaliknya dari kata-kata jawaban.
4.  jika jawaban benar, maka akan muncul pesan bahwa jawaban benar dan pertanyaan yang telah terjawab akan berubah warna tulisannya.""",
                                              style: const TextStyle(
                                                  color: appBlack,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.all(15),
                                          child: Text("""Game Tips:
1.  Jawaban bisa ditemukan pada kotak yang tersusun secara vertikal atau horizontal. (TIDAK DIAGONAL).""",
                                              style: const TextStyle(
                                                  color: appBlack,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
