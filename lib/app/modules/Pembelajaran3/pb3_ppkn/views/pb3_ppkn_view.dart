// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/Pembelajaran3/pb3/views/pb3_view.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../controllers/pb3_ppkn_controller.dart';

class Pb3PpknView extends GetView<Pb3PpknController> {
  const Pb3PpknView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Pb3View()),
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
                    Get.offAllNamed(Routes.PB3);
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
Peristiwa Lahirnya Pancasila
\nPancasila berasal dari bahasa Sanskerta, yaitu panca dan sila. Panca artinya lima, dan sila artinya dasar. Jadi, pancasila berarti lima dsar atau lima asar. Dalam kitab Sutasoma karangan Mpu Tantular, pancasila berarti berbatu sendi yang lima atau pelaksanaan kesusilaan yang lima. Lahirnya pancasila sebagai dasar negara terjadi pada saat sidang BPUPKI (Badan Penyelidik Usaha Persiapan Kemerdekaan Indonesia) yang pertama. Adapun usulan-usulan dasar negara disampaikan oleh tiga tokoh negara.
\nPada tanggal 18 Agustus 1945, disahkan Undang-Undang Dasar 1945 pada sidang Panitia Persiapan Kemerdekaan Indonesia (PPKI) termasuk pembukaan UUD 1945. Pada pembukaan UUD 1945, termuat isi rumusan Prinsip Dasar Negara (Pancasila) pada alinea ke IV yang berbunyi:
\n1. Ketuhanan Yang Maha Esa
\n2. Kemanusiaan yang Adil dan Beradab
\n3. Persatuan Indonesia
\n4. Kerakyatan yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan/perwakilan
\n5. Keadilan sosial bagi seluruh rakyat Indonesia

\n\nUsulan-usulan Dasar Negara
Foto Muhammad yamin
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
                                  AssetImage("assets/img/pbiii_i_i.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        ''' 
Muhammad yamin  mengusulkan lima dasar negara pada tanggal 29 Mei 1945
\n1. Peri kebangsaan
\n2. Peri kemanusiaan
\n3. Peri ketuhanan
\n4. Peri kerakyatan
\n5. Kesejahteraan rakyat
\n\nFoto Prof. Dr. Mr. Soepomo
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
                                  AssetImage("assets/img/pbiii_i_ii.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        ''' 
Prof. Dr. Mr. Soepomo mengusulkan lima asas dalam pidato singkatnya pada tanggal 31 Mei 1945
\n1. Persatuan
\n2. Kekeluargaan
\n3. Keseimbangan lahir batin
\n4. Musyawarah
\n5. Keadilan rakyat
\n\nFoto Ir. Soekarno
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
                                  AssetImage("assets/img/pbiii_i_iii.jpg"),
                              initialScale: PhotoViewComputedScale.contained,
                            );
                          },
                          itemCount: 1,
                        ),
                      ),
                      Text(
                        ''' 
Ir. Soekarno mengusulkan rumusan dasar negara dalam pidato tanpa teks di hari terakhir Sidang BPUPKI pada tanggal 1 Juni 1945
\n1. Kebangsaan Indonesia
\n2. Internasionalisme atau peri kemanusiaan
\n3. Mufakat atau demokrasi
\n4. Kesejahteraan sosial
\n5. Ketuhanan Yang Maha Esa
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
