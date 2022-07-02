// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/Pembelajaran2/pb2/views/pb2_view.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../controllers/pb2_ips_controller.dart';

class Pb2IpsView extends GetView<Pb2IpsController> {
  const Pb2IpsView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Pb2View()),
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
                    Get.offAllNamed(Routes.PB2);
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
                        ''' 
Peran Pelajar dalam Mengisi Kemerdekaan
\nPelajar merupakan salah satu warga negara yang memiliki peran dan tugas yang harus dilaksanakan untuk mengisi kemerdekaan. Kita sebagai generasi penerus bangsa, pelajar dituntut bekerja keras dan belajar dengan sungguh-sungguh untuk meningkatkan kualitas dirinya. Belajar dapat dilakukan melalui kegiatan kemasyarakatan yang sangat berguna untuk mengasah rasa peduli dan cinta tanah air. Kegiatan-kegiatan seperti pramuka, Palang Merah Remaja (PMR) menjadi duta seni, kegiatan olahraga yang berdampak baik bagi peningkatan kualitas diri pelajar.
\nPerjuangan pelajar sebagai generasi muda saat ini tidak lagi mengangkat senjata dan berlaga di medan perang melawan penjajah yang tampak. Pelajar hanya perlu berjuang untuk melawan kebodohan, kemiskinan, rasa malas, rasa mudah menyerah yang dapat merugikan bangsa dan negara. Ia harus berpendidikan, pantang menyerah, pekerja keras, kreatif, berakhlak mulia, cinta tanah air dan bangsa.
\nContoh peran pelajar dalam megisi kemerdekaan yaitu :
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
                                  AssetImage("assets/img/pbii_i_i.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''Belajar dengan sungguh-sungguh''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
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
                                  AssetImage("assets/img/pbii_i_ii.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        ''' 
Berperan aktif dalam organisasi dan kegiatan sosial
              ''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
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
                                  AssetImage("assets/img/pbii_i_iii.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        ''' 
Mencintai kesenian dan budaya indonesia
              ''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
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
                                  AssetImage("assets/img/pbii_i_iv.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
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
