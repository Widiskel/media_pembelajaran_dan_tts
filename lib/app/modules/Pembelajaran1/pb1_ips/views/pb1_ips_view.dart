// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/player.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../controllers/pb1_ips_controller.dart';

class Pb1IpsView extends GetView<Pb1IpsController> {
  Pb1IpsView({Key key}) : super(key: key);

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
              padding: EdgeInsets.all(15),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          '''Kegiatan Mengisi Kemerdekaan''',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: appBlack,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        '''\n
\n  Kemerdekaan Negara Kesatuan Republik Indonesia didapatkan dengan cara yang tidak mudah dan tidak murah. Bertahun-tahun para pemimpin bangsa berupaya dengan berbagai macam cara untuk melepaskan diri dari penjajahan bangsa lain. Ribuan nyawa manusia juga telah melayang dalam upaya ini.
  Generasi penerus bangsa harus mengisi kemerdekaan dengan kegiatan yang positif dalam rangka pembangunan bangsa Indonesia yang seutuhnya. Misalnya, dengan mencintai dan bangga menjadi bangsa Indonesia serta membangun kualitas manusia dengan cara menuntut ilmu setinggi-tingginya dan berkarya untuk membangun bangsa Indonesia. Adapun contoh yang dapat dilakukan dalam mengisi kemerdekaan antara lain:''',
                        style: new TextStyle(
                            fontSize: 12.0,
                            color: appBlack,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
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
                      Center(
                        child: Text(
                          '''Mengikuti Upacara Bendera''',
                          style: new TextStyle(
                            fontSize: 10.0,
                            color: appBlack,
                          ),
                          textAlign: TextAlign.center,
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
                                  AssetImage("assets/img/pb1_ips_1.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Center(
                        child: Text(
                          '''Sumber: jatimnetwork.com''',
                          style: new TextStyle(
                            fontSize: 10.0,
                            color: appBlack,
                          ),
                          textAlign: TextAlign.center,
                        ),
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
                      Center(
                        child: Text(
                          '''Menjaga dan melestarikan budaya.''',
                          style: new TextStyle(
                            fontSize: 10.0,
                            color: appBlack,
                          ),
                          textAlign: TextAlign.center,
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
                                  AssetImage("assets/img/pb1_ips_2.jpg"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Center(
                        child: Text(
                          '''Sumber: lokadata.ID''',
                          style: new TextStyle(
                            fontSize: 10.0,
                            color: appBlack,
                          ),
                          textAlign: TextAlign.center,
                        ),
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
                      Center(
                        child: Text(
                          '''Terlibat aktif dalam kegiatan masyarakat.''',
                          style: new TextStyle(
                            fontSize: 10.0,
                            color: appBlack,
                          ),
                          textAlign: TextAlign.center,
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
                                  AssetImage("assets/img/pb1_ips_3.jpg"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Center(
                        child: Text(
                          '''Sumber: JabarEkspres.com''',
                          style: new TextStyle(
                            fontSize: 10.0,
                            color: appBlack,
                          ),
                          textAlign: TextAlign.center,
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
