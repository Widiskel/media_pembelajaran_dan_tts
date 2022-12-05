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
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        alignment: Alignment.center,
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                '\n\nTema   : 7 (Peristiwa Dalam Kehidupan)',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'Subtema : 3  (Peristiwa Mengisi Kemerdekaan)',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'Pembelajaran : 1\n',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'A.	Kompetensi Dasar (KD) dan Indikator',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Bahasa Indonesia',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.top,
                textDirection: TextDirection.ltr,
                children: <TableRow>[
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Kompetensi Dasar',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Indikator',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.9 Mencermati penggunaan kalimat efektif dan ejaan dalam surat undangan (ulang tahun, kegiatan sekolah, kenaikan kelas, dll.)''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.9.1 Menjelaskan jenis-jenis dan bagian-bagian surat undangan dengan ejaan yang tepat.
''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.9  Membuat surat undangan (ulang tahun, kegiatan sekolah, kenaikan kelas, dll.) dengan kalimat efektif dan memperhatikan penggunaan ejaan.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.9.1 Membuat kembali surat undangan dengan ejaan yang tepat.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                ],
              ),

//  bi

// ipa
              SizedBox(
                height: 20,
              ),
              Text(
                'IPA',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),

              Table(
                border: TableBorder.all(),
                textDirection: TextDirection.ltr,
                children: <TableRow>[
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Kompetensi Dasar',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Indikator',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.7  Menganalisis pengaruh kalor terhadap perubahan suhu dan wujud benda dalam kehidupan sehari-hari.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.7.1 Menemukan perubahan wujud benda yang dipengaruhi kalor atau panas.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.7 Melaporkan hasil percobaan pengaruh kalor pada benda.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.7.1 Mempertujukkan perubahan wujud benda yang dipengaruhi kalor atau panas.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                ],
              ),
//               //pb1ipa

//Ips
              SizedBox(
                height: 20,
              ),
              Text(
                'IPS',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),

              Table(
                border: TableBorder.all(),
                textDirection: TextDirection.ltr,
                children: <TableRow>[
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Kompetensi Dasar',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Indikator',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.4  Mengidentifikasi faktor-faktor penting penyebab penjajahan bangsa Indonesia dan upaya bangsa Indonesia dalam mempertahankan kedaulatannya. ''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.4.1 Memberi contoh kegiatan-kegiatan dalam mengisi kemerdekaan.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.4  Menyajikan hasil identifikasi mengenai faktor-faktor penting penyebab penjajahan bangsa Indonesia dan upaya bangsa Indonesia dalam mempertahankan kedaulatannya.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.4.1 Mengikuti kegiatan-kegiatan dalam mengisi kemerdekaan.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'B.	Tujuan Pembelajaran',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  '''
1.	Dengan menggunakan media pembelajaran interaktif, siswa mampu menjelaskan jenis-jenis dan bagian-bagian surat undangan dengan ejaan yang tepat dengan benar.
2.	Dengan menggunakan media pembelajaran interaktif, siswa mampu membuat kembali surat undangan dengan ejaan yang tepat dengan benar.
3.	Dengan menggunakan media pembelajaran interaktif, siswa mampu menemukan perubahan wujud benda yang dipengaruhi kalor atau panas dengan benar.
4.	Dengan menggunakan media pembelajaran interaktif, siswa mampu mempertunjukkan perubahan wujud benda yang dipengaruhi kalor atau panas dengan benar
5.	Dengan menggunakan media pembelajaran interaktif, siswa mampu memberi contoh kegiatan-kegiatan dalam mengisi kemerdekaan dengan benar.
6.	Dengan menggunakan media pembelajaran interaktif, siswa mampu mengikuti kegiatan-kegiatan dalam mengisi kemerdekaan dengan benar
''',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'C.	Materi Pembelajaran',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  '''
•	Surat undangan
•	Perubahan wujud benda (Penyubliman)
•	Kegiatan mengisi kemerdekaan
''',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

//ips

/////pb2
              SizedBox(
                height: 30,
              ),
              Text(
                '\n\nTema   : 7 (Peristiwa Dalam Kehidupan)',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'Subtema : 3  (Peristiwa Mengisi Kemerdekaan)',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'Pembelajaran : 2\n',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),

              Text(
                'A.	Kompetensi Dasar (KD) dan Indikator',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Bahasa Indonesia',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),

              Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.top,
                textDirection: TextDirection.ltr,
                children: <TableRow>[
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Kompetensi Dasar',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Indikator',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.5  Menggali informasi penting dari teks narasi yang disajikan secara lisan dan tulis menggunakan aspek: apa, dimana, kapan, siapa, mengapa, dan bagaimana.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.5.1 Menemukan kosa kata baku dan tidak baku dalam peran pelajar dalam mengisi kemerdekaan.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.5  Memaparkan informasi penting dari teks narasi menggunakan aspek : apa, dimana, kapan, siapa, mengapa, dan bagaimana serta kosakata baku dan kalimat efektif.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.5.1 Menunjukkan kosa kata baku dan tidak baku dalam peran pelajar dalam mengisi kemerdekaan.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                ],
              ),

//  bi
// here
// ipa
              SizedBox(
                height: 20,
              ),
              Text(
                'IPA',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),

              Table(
                border: TableBorder.all(),
                textDirection: TextDirection.ltr,
                children: <TableRow>[
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Kompetensi Dasar',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Indikator',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.7  Menganalisis pengaruh kalor terhadap perubahan suhu dan wujud benda dalam kehidupan sehari-hari.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.7.1 Menguraikan peristiwa pengkristalan.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.7 Melaporkan hasil percobaan pengaruh kalor pada benda.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.7.1 Mempraktikkan peristiwa pengkristalan.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                ],
              ),
//               //pb1ipa

//Ips
              SizedBox(
                height: 20,
              ),
              Text(
                'SBdP',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),

              Table(
                border: TableBorder.all(),
                textDirection: TextDirection.ltr,
                children: <TableRow>[
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Kompetensi Dasar',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Indikator',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.4  Memahami karya seni rupa daerah.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.4.1 Menjelaskan ragam seni rupa daerah.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.4  Membuat karya seni rupa daerah.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.4.1 Mencoba membuat ragam seni rupa daerah.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'B.	Tujuan Pembelajaran',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  '''
1.	Dengan menggunakan media pembelajaran interaktif, siswa mampu menemukan kosa kata baku dan tidak baku dalam peran pelajar dalam mengisi kemerdekaan dengan benar.
2.	Dengan menggunakan media pembelajaran interaktif, siswa mampu menunjukkan kosa kata baku dan tidak baku dalam peran pelajar dalam mengisi kemerdekaan dengan benar.
3.	Dengan menggunakan media pembelajaran interaktif, siswa mampu menguraikan peristiwa pengkristalan dengan benar.
4.	Dengan menggunakan media pembelajaran interaktif, siswa mampu mempraktikkan peristiwa pengkristalan dengan benar.
5.	Dengan menggunakan media pembelajaran interaktif, siswa mampu menjelaskan ragam seni rupa daerah dengan benar.
6.	Dengan menggunakan media pembelajaran interaktif, siswa mampu mencoba membuat ragam seni rupa daerah dengan benar.
''',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'C.	Materi Pembelajaran',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  '''
•	Kosakata dalam bacaan
•	Perubahan wujud benda (Pengkristalan)
•	Ragam seni rupa daerah
''',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              ///pb3
              ///
              ///
              ////
              SizedBox(
                height: 30,
              ),
              Text(
                '\n\nTema   : 7 (Peristiwa Dalam Kehidupan)',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'Subtema : 3  (Peristiwa Mengisi Kemerdekaan)',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'Pembelajaran : 3\n',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),

              Text(
                'A.	Kompetensi Dasar (KD) dan Indikator',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'IPS',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),

              Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.top,
                textDirection: TextDirection.ltr,
                children: <TableRow>[
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Kompetensi Dasar',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Indikator',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.4  Mengidentifikasi faktor-faktor penting penyebab penjajahan bangsa Indonesia dan upaya bangsa Indonesia dalam mempertahankan kedaulatannya.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.4.1 Mendemontrasikan peristiwa lahirnya pancasila.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.4  Menyajikan hasil identifikasi mengenai faktor-faktor penting penyebab penjajahan bangsa Indonesia dan upaya bangsa Indonesia dalam mempertahankan kedaulatannya.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.4.1 Membuat kembali teks peristiwa lahirnya pancasila.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                ],
              ),

//  bi

// ipa
              SizedBox(
                height: 20,
              ),
              Text(
                'Bahasa Indonesia',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),

              Table(
                border: TableBorder.all(),
                textDirection: TextDirection.ltr,
                children: <TableRow>[
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Kompetensi Dasar',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Indikator',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.5  Menggali informasi penting dari teks narasi yang disajikan secara lisan dan tulis menggunakan aspek: apa, dimana, kapan, siapa, mengapa, dan bagaimana.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.5.1 Menguraikan informasi penting dari makna pancasila dalam keragaman budaya bangsa.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.5  Memaparkan informasi penting dari teks narasi menggunakan aspek : apa, dimana, kapan, siapa, mengapa, dan bagaimana serta kosakata baku dan kalimat efektif.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.5.1 Menunjukkan informasi penting dari makna pancasila dalam keragaman budaya bangsa.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                ],
              ),
//               //pb1ipa

//Ips
              SizedBox(
                height: 20,
              ),
              Text(
                'PPKN',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),

              Table(
                border: TableBorder.all(),
                textDirection: TextDirection.ltr,
                children: <TableRow>[
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Kompetensi Dasar',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Indikator',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.3  Menelaah keberagaman sosial budaya masyarakat.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''3.3.1 Menentukan nilai-nilai pancasila yang berkembang di masyarakat.

''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.3  Menyelenggarakan kegiatan yang mendukung keberagaman sosial budaya masyarakat.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''4.3.1 Membangun nilai-nilai pancasila yang berkembang di masyarakat.''',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'B.	Tujuan Pembelajaran',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  '''
1.	Dengan menggunakan media pembelajaran interaktif, siswa mampu mendemontrasikan peristiwa lahirnya pancasila dengan benar.
2.	Dengan menggunakan media pembelajaran interaktif, siswa mampu mengulangi peristiwa lahirnya pancasila dengan benar.
3.	Dengan menggunakan media pembelajaran interaktif, siswa mampu menguraikan informasi penting makna pancasila dalam keragaman budaya bangsa dengan benar.
4.	Dengan menggunakan media pembelajaran interaktif, siswa mampu menunjukkan informasi penting dari makna pancasila dalam keragaman budaya bangsa dengan benar.
5.	Dengan menggunakan media pembelajaran interaktif, siswa mampu menentukan nilai-nilai pancasila yang berkembang di masyarakat dengan benar.
6.	Dengan menggunakan media pembelajaran interaktif, siswa mampu membangun nilai-nilai pancasila yang berkembang di masyarakat dengan benar.
''',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'C.	Materi Pembelajaran',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  '''
•	Peristiwa lahirnya pancasila
•	Informasi penting dari bacaan
•	Nilai-nilai luhur pancasila
''',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 40,
              )
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
