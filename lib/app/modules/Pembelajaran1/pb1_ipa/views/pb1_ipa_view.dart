// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/Pembelajaran1/pb1/views/pb1_view.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../controllers/pb1_ipa_controller.dart';

class Pb1IpaView extends GetView<Pb1IpaController> {
  const Pb1IpaView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Pb1View()),
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
                    Get.offAllNamed(Routes.PB1);
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
              margin: EdgeInsets.only(left: 25, right: 25, top: 90, bottom: 30),
              decoration: BoxDecoration(
                  color: appLightBlue.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(60)),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(30),
              height: double.maxFinite,
              margin: EdgeInsets.only(left: 32, right: 32, top: 95, bottom: 35),
              decoration: BoxDecoration(
                  color: appWhite.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(60)),
              child: Scrollbar(
                thickness: 10,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical, //.horizontal
                  child: Column(
                    children: [
                      Text(
                        '''Perubahan wujud benda (Menyblim)
\nPerubahan wujud benda terjadi di sekitar kita tanpa kita sadari. Perubahan wujud benda merupakan suatu perubahan alami karena fenomena alam yang terjadi di sekeliling kita. Salah satu perubahan wujud benda yaitu menyublim.
\nMenyublim adalah perubahan wujud benda dari benda padat menjadi gas.

              ''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
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
                                  AssetImage("assets/img/pbii_i.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''Es kering ini berbeda dengan es batu biasa yang terbuat dari air. Es kering berasal dari karbondioksida yang berbentuk padat. Jika dibiarkan terus-menerus maka akan habis.
              ''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
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
                                  AssetImage("assets/img/pbii_ii.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''
Kapur barus yang diletakkan di lemari dalam beberapa hari akan mengecil bahkan menghilang dari lemari.
''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
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
