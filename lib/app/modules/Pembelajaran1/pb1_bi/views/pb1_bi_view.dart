// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/player.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../controllers/pb1_bi_controller.dart';

class Pb1BiView extends GetView<Pb1BiController> {
  Pb1BiView({Key key}) : super(key: key);
  final aPlay = Get.find<APlayer>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
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
                  image: AssetImage("assets/img/bg 1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: BouncingWidget(
                stayOnBottom: false,
                onPressed: () {
                  Future.delayed(
                    Duration(milliseconds: 400),
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
                      image: AssetImage('assets/img/musik 1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Row(
                  children: [
                    BouncingWidget(
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
                        margin: EdgeInsets.only(top: 30, left: 30, bottom: 30),
                        decoration: BoxDecoration(
                          //color: appRed,
                          image: DecorationImage(
                            image: AssetImage('assets/img/back 1.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    BouncingWidget(
                      stayOnBottom: false,
                      onPressed: () {
                        Future.delayed(
                          Duration(milliseconds: 400),
                          () {
                            aPlay.clickPlay();
                            Get.toNamed(Routes.HOME);
                          },
                        );
                      },
                      scaleFactor: 2,
                      child: Container(
                        height: Get.width * 0.13,
                        width: Get.width * 0.13,
                        margin: EdgeInsets.only(top: 30, bottom: 30, left: 10),
                        decoration: BoxDecoration(
                          //color: appRed,
                          image: DecorationImage(
                            image: AssetImage('assets/img/TOMBOL HOME 1.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //head
            //body

            Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(30),
              height: double.maxFinite,
              margin: EdgeInsets.only(left: 32, right: 32, top: 95, bottom: 35),
              decoration: BoxDecoration(
                  color: appWhite.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: appCyan, width: 10)),
              child: Scrollbar(
                thickness: 10,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical, //.horizontal
                  child: Column(
                    children: [
                      Text(
                        '''Surat Undangan''',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''\n   Surat undangan merupakan surat yang berisi pemberitahuan dan permintaan kesediaan seseorang untuk menghadiri suatu acara atau kegiatan. Kalimat yang digunakan dalam surat undangan haruslah singkat, jelas dan padat. Tujuannya agar orang yang membacanya dapat segera mengerti isi surat undangan tersebut.
\nJenis surat undangan ada 3 jenis, yaitu:
1.  Undangan resmi, undangan yang mengatasnamakan sebuah organisasi, instansi dan kedinasan untuk kepentingan kedinasan. 
2.  Undangan setengah resmi, undangan yang mengatasnamakan perorangan yang ditujukan ke perorangan maupun instansi atau organisasi untuk kepentingan umum.
3.  Undangan tidak resmi, undangan yang mengatasnamakan perorangan yang ditujukan kepada perorangan untuk kepentingan perorangan, seperti undangan ulang tahun.

Bagian-bagian surat :''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '''''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      AspectRatio(
                        aspectRatio: 1,
                        child: PhotoViewGallery.builder(
                          backgroundDecoration:
                              BoxDecoration(color: Colors.transparent),
                          scrollPhysics: BouncingScrollPhysics(),
                          builder: (BuildContext context, int index) {
                            return PhotoViewGalleryPageOptions(
                              maxScale: PhotoViewComputedScale.contained * 10,
                              minScale: PhotoViewComputedScale.contained,
                              imageProvider:
                                  AssetImage("assets/img/contoh undangan 1.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      AspectRatio(
                        aspectRatio: 1,
                        child: PhotoViewGallery.builder(
                          backgroundDecoration:
                              BoxDecoration(color: Colors.transparent),
                          scrollPhysics: BouncingScrollPhysics(),
                          builder: (BuildContext context, int index) {
                            return PhotoViewGalleryPageOptions(
                              maxScale: PhotoViewComputedScale.contained * 10,
                              minScale: PhotoViewComputedScale.contained,
                              imageProvider:
                                  AssetImage("assets/img/contoh undangan 2.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      AspectRatio(
                        aspectRatio: 1,
                        child: PhotoViewGallery.builder(
                          backgroundDecoration:
                              BoxDecoration(color: Colors.transparent),
                          scrollPhysics: BouncingScrollPhysics(),
                          builder: (BuildContext context, int index) {
                            return PhotoViewGalleryPageOptions(
                              maxScale: PhotoViewComputedScale.contained * 10,
                              minScale: PhotoViewComputedScale.contained,
                              imageProvider:
                                  AssetImage("assets/img/contoh undangan 3.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                    ],
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
