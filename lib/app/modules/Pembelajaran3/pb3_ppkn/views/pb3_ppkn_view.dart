// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../../player.dart';
import '../controllers/pb3_ppkn_controller.dart';

class Pb3PpknView extends GetView<Pb3PpknController> {
  Pb3PpknView({Key key}) : super(key: key);

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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '''Peristiwa Lahirnya Pancasila''',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: appBlack,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        ''' 
\n    Pancasila berasal dari bahasa Sanskerta, yaitu panca dan sila. Panca artinya lima dan sila artinya dasar. Jadi, pancasila berarti lima dasar atau lima asas. Dalam kitab Sutasoma karangan Mpu Tantular, pancasila berarti berbatu sendi yang lima atau pelaksanaan kesusilaan yang lima. Lahirnya pancasila sebagai dasar negara terjadi pada saat sidang BPUPKI (Badan Penyelidik Usaha Persiapan Kemerdekaan Indonesia) yang pertama.
    Pada tanggal 18 Agustus 1945, disahkan Undang-Undang Dasar 1945 pada sidang Panitia Persiapan Kemerdekaan Indonesia (PPKI) termasuk pembukaan UUD 1945. Pada pembukaan UUD 1945, termuat isi rumusan Prinsip Dasar Negara (Pancasila) pada alinea ke IV yang berbunyi:
1.	Ketuhanan Yang Maha Esa
2.	Kemanusiaan yang Adil dan Beradab
3.	Persatuan Indonesia
4.	Kerakyatan yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan/perwakilan
5.	Keadilan sosial bagi seluruh rakyat Indonesia
              ''',
                        style: new TextStyle(
                            fontSize: 12.0,
                            color: appBlack,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '''Adapun usulan-usulan dasar negara disampaikan oleh tiga tokoh negara, yaitu:\n\n''',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      // Text(
                      //   '''\nFoto Muhammad yamin''',
                      //   style: new TextStyle(
                      //     fontWeight: FontWeight.normal,
                      //     fontSize: 12.0,
                      //     color: appBlack,
                      //   ),
                      //   textAlign: TextAlign.center,
                      // ),
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
                                  AssetImage("assets/img/pb3_ips_1.jpg"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        ''' 
-   Muhammad yamin  mengusulkan lima dasar negara pada tanggal 29 Mei 1945
1. Peri kebangsaan
2. Peri kemanusiaan
3. Peri ketuhanan
4. Peri kerakyatan
5. Kesejahteraan rakyat
              ''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                      ),
                      // Text(
                      //   '''Foto Prof. Dr. Mr. Soepomo''',
                      //   style: new TextStyle(
                      //     fontWeight: FontWeight.normal,
                      //     fontSize: 12.0,
                      //     color: appBlack,
                      //   ),
                      //   textAlign: TextAlign.center,
                      // ),
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
                                  AssetImage("assets/img/pb3_ips_2.jpg"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        ''' 
-   Prof. Dr. Mr. Soepomo mengusulkan lima asas dalam pidato singkatnya pada tanggal 31 Mei 1945
1. Persatuan
2. Kekeluargaan
3. Keseimbangan lahir batin
4. Musyawarah
5. Keadilan rakyat
              ''',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: appBlack,
                        ),
                      ),
                      // Text(
                      //   '''Foto Ir. Soekarno''',
                      //   style: new TextStyle(
                      //     fontWeight: FontWeight.normal,
                      //     fontSize: 12.0,
                      //     color: appBlack,
                      //   ),
                      //   textAlign: TextAlign.center,
                      // ),
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
                                  AssetImage("assets/img/pb3_ips_3.png"),
                              initialScale: PhotoViewComputedScale.covered,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        ''' 
-   Ir. Soekarno mengusulkan rumusan dasar negara dalam pidato tanpa teks di hari terakhir Sidang BPUPKI pada tanggal 1 Juni 1945
1. Kebangsaan Indonesia
2. Internasionalisme atau peri kemanusiaan
3. Mufakat atau demokrasi
4. Kesejahteraan sosial
5. Ketuhanan Yang Maha Esa
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
