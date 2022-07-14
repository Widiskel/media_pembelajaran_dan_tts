// ignore_for_file: missing_return, unused_import

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/Pembelajaran3/pb3/views/pb3_view.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../../player.dart';
import '../controllers/pb3_ppkn2_controller.dart';

class Pb3Ppkn2View extends GetView<Pb3Ppkn2Controller> {
  Pb3Ppkn2View({Key key}) : super(key: key);
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
                        '''Peran Pancasila dalam Menjaga Keberagaman Bangsa''',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        ''' 
\n  Pancasila sebagai dasar negara merupakan kepribadian dan pandangan hidup bangsa Indonesia. Maka, nilai-nilai luhur yang terkandung di dalamnya harus dipahami dan diamalkan oleh setiap warga negara Indonesia. Kita memiliki dasar yang kuat sehingga akan bisa menentukan sikap perilaku dan menghadapi perubahan-perubahan yang terjadi. Dengan demkian, kita tidak akan kehilangan kepribadian sebagai bangsa. Pancasila merupakan ukuran dan pedoman nilai dan norma untuk menerima atau menolak pengaruh globalisasi dan perkembangan Iptek. Pancasila merupakan pandangan hidup yang telah menyatu di dalam kebudayaan bangsa Indonesia.
  Ada beberapa cara dalam menemukan informasi penting, yaitu:
1.  Membuat daftar pertanyaan berdasarkan isi teks dengan menggunakan kata tanya, seperti apa, siapa, kapan, di mana, mengapa, dan bagaimana.
2.  Menggunakan peta pikiran yaitu menentukan ide pokok dari teks kemudian menuliskan kalimat penjelas dalam bentuk poin-poin.
\nContoh membuat peta pikiran :
              ''',
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
                                  AssetImage("assets/img/pb3_bi_1.PNG"),
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
