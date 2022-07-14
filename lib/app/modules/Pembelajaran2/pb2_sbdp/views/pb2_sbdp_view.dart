// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/player.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../controllers/pb2_sbdp_controller.dart';

class Pb2SbdpView extends GetView<Pb2SbdpController> {
  Pb2SbdpView({Key key}) : super(key: key);
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
                        '''Seni Rupa Daerah Indonesia''',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''\n  Seni rupa daerah adalah seni rupa yang terdapat di berbagai daerah di Indonesia. Seni rupa daerah dapat disebut juga seni rupa tradisional karena dikerjakan secara turun-menurun. Hasil karya seni rupa telah menjadi bagian dari peradaban manusia. Keindahan karya-karya seni rupa terdapat pada bentuk dan warnanya. Dengan mengenal berbagai bentuk karya seni rupa, kita dapat merasakan keindahannya dengan baik.
  Seni rupa daerah Indonesia terbagi menjadi tiga jenis, yaitu:
1. Seni lukis (2 dimensi). Seni lukis adalah seni menggambarkan objek-objek berupa pemandangan alam, binatang, manusia, tumbuhan, benda di alam untuk menimbulkan perasaan keindahan.
2. Seni patung (3 dimensi). Seni patung adalah seni membuat bentuk manusia atau binatang dengan bahan yang lunak atau bahan kertas
3. Seni kriya (3  dimensi). Seni kriya adalah sei kerajinan dalam membuat benda pakai berdasarkan kegunaan dan keindahannya dalam kehidupan sehari-hari.''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '''
\nContoh seni lukis daerah
''',
                        style: new TextStyle(
                            fontSize: 12.0,
                            color: appBlack,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''Seni lukis kamasan dari Bali.''',
                        style: new TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
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
                                  AssetImage("assets/img/pb2_sbdp_1.jpg"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''Sumber: bolitoursclub.com''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''
''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '''Seni lukis kaca dari Cirebon.''',
                        style: new TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
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
                                  AssetImage("assets/img/pb2_sbdp_2.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''Sumber: lukis-mania.blogspot.com''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''
\nContoh seni patung daerah
''',
                        style: new TextStyle(
                            fontSize: 12.0,
                            color: appBlack,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''Seni patung Asmat dari Papua''',
                        style: new TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
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
                                  AssetImage("assets/img/pb2_sbdp_3.jpg"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''Sumber: greenfreshday.wordpress.com''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''
''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '''\nContoh seni kriya daerah
Seni Tekstil
''',
                        style: new TextStyle(
                            fontSize: 12.0,
                            color: appBlack,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''Kain songket''',
                        style: new TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
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
                                  AssetImage("assets/img/pb2_sbdp_4.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''Sumber: student-activity.binus.ac.id''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''
''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '''Kain batik''',
                        style: new TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
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
                                  AssetImage("assets/img/pb2_sbdp_5.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''Sumber: cleanpng.com''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''
''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '''Kain Tenun''',
                        style: new TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
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
                                  AssetImage("assets/img/pb2_sbdp_6.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''Sumber: lazada.co.id''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''
''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '''
Seni Anyaman
''',
                        style: new TextStyle(
                            fontSize: 12.0,
                            color: appBlack,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
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
                                  AssetImage("assets/img/pb2_sbdp_7.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
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
                                  AssetImage("assets/img/pb2_sbdp_8.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''Sumber: pakdosen.co.id''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '''
''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '''
Seni Ukir
''',
                        style: new TextStyle(
                            fontSize: 12.0,
                            color: appBlack,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
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
                                  AssetImage("assets/img/pb2_sbdp_9.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''Sumber: journal.uc.ac.id''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.center,
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
