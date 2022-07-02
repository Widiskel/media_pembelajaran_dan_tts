// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/Pembelajaran1/pb1/views/pb1_view.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../controllers/pb1_ips_controller.dart';

class Pb1IpsView extends GetView<Pb1IpsController> {
  const Pb1IpsView({Key key}) : super(key: key);
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
                        '''
Kegiatan Mengisi Kemerdekaan
\nKemerdekaan Negara Kesatuan Republik Indonesia didapatkan dengan cara yang tidak mudah dan tidak murah. Bertahun-tahun para pemimpin bangsa berupaya dengan berbagai macam cara untuk melepaskan diri dari penjajahan bangsa lain. Ribuan nyawa manusia juga telah melayang dalam upaya ini.
\nGenerasi penerus bangsa harus mengisi kemerdekaan dengan kegiatan yang positif dalam rangka pembengunan bangsa Indonesia yang seutuhnya. Misalnya dengan mencintai dan bangga menjadi bangsa Indonesia serta membangun kualitas manusia Indonesia dengan cara menuntuk ilmu setinggi-tingginya dan berkaya untuk membangun bangsa Indonesia. 
\nKegiatan mengisi kemerdekaan bisa dengan cara pembangunan sarana dan prasarana di berbagai bidang


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
                                  AssetImage("assets/img/pbiii_i.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''
Pembangunan jalan. Sumber: bisnis.tempo.co
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
                                  AssetImage("assets/img/pbiii_ii.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''
Pembangunan jembatan. Sumber: tender-indonesia.com
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
                                  AssetImage("assets/img/pbiii_iii.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''
Pembangunan pasar. Sumber: radarmadura.jawapos.com
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
                                  AssetImage("assets/img/pbiii_iv.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''
Pembangunan sekolah. Sumber: sekolah.data.kemendikbud.go.id
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
                                  AssetImage("assets/img/pbiii_v.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        '''
Pembangunan tempat ibadah. Sumber: ajnn.net
             ''',
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10.0,
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
