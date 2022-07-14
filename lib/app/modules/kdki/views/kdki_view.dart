// ignore_for_file: missing_return

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:crossword_mp/app/modules/player.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kdki_controller.dart';

class KdkiView extends GetView<KdkiController> {
  KdkiView({Key key}) : super(key: key);
  final aPlay = Get.find<APlayer>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => (WillPopScope(
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
                width: double.maxFinite,
                height: double.maxFinite,
                margin:
                    EdgeInsets.only(left: 32, right: 32, top: 95, bottom: 85),
                decoration: BoxDecoration(
                    color: appWhite.withOpacity(0.5),
                    border: Border.all(
                        color: appLightRed.withOpacity(1), width: 10),
                    borderRadius: BorderRadius.circular(60)),
                child: kdki(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Container(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: BouncingWidget(
                              scaleFactor: 2,
                              onPressed: () {
                                Future.delayed(
                                  Duration(milliseconds: 300),
                                  () {
                                    aPlay.clickPlay();
                                    controller.kdorki.value = 1;
                                    kdki();
                                  },
                                );
                              },
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/img/TOMBO KD 1.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Flexible(
                            child: BouncingWidget(
                              onPressed: () {
                                Future.delayed(
                                  Duration(milliseconds: 300),
                                  () {
                                    aPlay.clickPlay();
                                    controller.kdorki.value = 2;
                                    kdki();
                                  },
                                );
                              },
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/img/TOMBOL KI 1.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  kdki() {
    print(controller.kdorki);
    if (controller.kdorki == 1) {
      return Container(
        margin: EdgeInsets.all(30),
        alignment: Alignment.center,
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                '''
Kompetensi Dasar dan Indikator
                ''',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''\nPembelajaran 1\n(Bahasa Indonesia)''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''\nKD''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.9  Mencermati penggunaan kalimat efektif dan ejaan dalam surat undangan (ulang tahun, kegiatan sekolah, kenaikan kelas, dll.)
4.9  Membuat surat undangan (ulang tahun, kegiatan sekolah, kenaikan kelas, dll.) dengan kalimat efektif dan memperhatikan penggunaan ejaan''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nIndikator''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.9.1 Menjelaskan jenis-jenis dan bagian-bagian surat undangan dengan ejaan yang tepat
4.9.1 Menentukan bagian surat undangan dengan ejaan yang tepat''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              //pb1bi
              //pb1ipa
              Text(
                '''\nPembelajaran 1\n(IPA)''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''\nKD''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.7  Menganalisis pengaruh kalor terhadap perubahan suhu dan wujud benda dalam kehidupan seharihari
4.7  Melaporkan hasil percobaan pengaruh kalor pada benda''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nIndikator''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.7.1 Menemukan perubahan wujud benda yang dipengaruhi kalor atau panas
4.7.1 Merinci perubahan wujud benda yang dipengaruhi kalor atau panas''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              //pb1ipa
              //pb1ips
              Text(
                '''\nPembelajaran 1\n(IPS)''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''\nKD''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.4  Mengidentifikasi faktor-faktor penting penyebab penjajahan bangsa Indonesia dan upaya bangsa Indonesia dalam mempertahankan kedaulatannya
4.4  Menyajikan hasil identifikasi mengenai faktor-faktor penting penyebab penjajahan bangsa Indonesia dan upaya bangsa Indonesia dalam mempertahankan kedaulatannya''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nIndikator''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.4.1 Memberi contoh kegiatan-kegiatan dalam mengisi kemerdekaan
4.4.1 Menghubungkan kegiatan-kegiatan dalam mengisi kemerdekaan''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),

              //pb2
              Text(
                '''\n\nPembelajaran 2\n(Bahasa Indonesia)''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''\nKD''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.9  Mencermati penggunaan kalimat efektif dan ejaan dalam surat undangan (ulang tahun, kegiatan sekolah, kenaikan kelas, dll.)
4.9  Membuat surat undangan (ulang tahun, kegiatan sekolah, kenaikan kelas, dll.) dengan kalimat efektif dan memperhatikan penggunaan ejaan''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nIndikator''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.9.1 Menemukan kosa kata baku dan tidak baku dalam peran pelajar dalam mengisi kemerdekaan
4.9.1 Menguraikan kosa kata baku dan tidak baku dalam peran pelajar dalam mengisi kemerdekaan''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nPembelajaran 2\n(IPA)''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''\nKD''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.7  Menganalisis pengaruh kalor terhadap perubahan suhu dan wujud benda dalam kehidupan seharihari
4.7  Melaporkan hasil percobaan pengaruh kalor pada benda''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nIndikator''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.7.1 Menguraikan peristiwa pengkristalan
4.7.1 Membuktikan peristiwa pengkristalan''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nPembelajaran 2\n(SBdP)''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''\nKD''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.4  Memahami karya seni rupa daerah
4.4  Membuat karya seni rupa daerah''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nIndikator''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.4.1 Menjelaskan ragam seni rupa daerah
4.4.1 Menentukan ragam seni rupa daerah''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),

              //pb3
              Text(
                '''\n\nPembelajaran 3\n(IPS)''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''\nKD''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.4  Mengidentifikasi faktor-faktor penting penyebab penjajahan bangsa Indonesia dan upaya bangsa Indonesia dalam mempertahankan kedaulatannya
4.4  Menyajikan hasil identifikasi mengenai faktor-faktor penting penyebab penjajahan bangsa Indonesia dan upaya bangsa Indonesia dalam mempertahankan kedaulatannya''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nIndikator''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.4.1 Mendemontrasikan peristiwa lahirnya pancasila
4.4.1 Menentukan peristiwa lahirnya pancasila''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nPembelajaran 3\n(Bahasa Indonesia)''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''\nKD''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.9  Mencermati penggunaan kalimat efektif dan ejaan dalam surat undangan (ulang tahun, kegiatan sekolah, kenaikan kelas, dll.)
4.9  Membuat surat undangan (ulang tahun, kegiatan sekolah, kenaikan kelas, dll.) dengan kalimat efektif dan memperhatikan penggunaan ejaan''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nIndikator''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.9.1 Menguraikan informasi penting dari makna pancasila dalam keragaman budaya bangsa
4.9.1 Menafsirkan informasi penting dari makna pancasila dalam keragaman budaya bangsa''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nPembelajaran 3\n(PPKn)''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''\nKD''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.3  Menelaah keberagaman sosial budaya masyarakat
4.3  Menyelenggarakan kegiatan yang mendukung keberagaman sosial budaya masyarakat''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              Text(
                '''\nIndikator''',
                style: TextStyle(
                  color: appRed,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''3.3.1 Menentukan nilai-nilai pancasila yang berkembang di masyarakat
4.3.1 Mengorganisasikan nilai-nilai pancasila yang berkembang di masyarakat''',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.all(30),
        alignment: Alignment.center,
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                '''Kompetensi Inti''',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''
\n1)  Menerima, menjalankan, dan menghargai ajaran agama yang dianutnya.
\n2)  Menunjukkan perilaku jujur, disiplin, santun, percaya diri, peduli, dan bertanggung jawab dalam berinteraksi dengan keluarga, teman, guru, tetangga, dan negara.
\n3)  Memahami pengetahuan faktual, konseptual, prosedural, dan metakognitif pada tingkat dasar dengan cara mengamati, menanya, dan mencoba berdasarkan rasa ingin tahu tentang dirinya, makhluk ciptaan Tuhan dan kegiatannya, serta benda-benda yang dijumpainya di rumah, di sekolah, dan tempat bermain.
\n4)  Menunjukkan keterampilan berpikir dan bertindak kreatif, produktif, kritis, mandiri, kolaboratif, dan komunikatif. Dalam bahasa yang jelas, sistematis, logis dan kritis, dalam karya yang estetis, dalam gerakan yang mencerminkan anak sehat, dan tindakan yang mencerminkan perilaku anak sesuai dengan tahap perkembangannya.''',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      );
    }
  }
}
