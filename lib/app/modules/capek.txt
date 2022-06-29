// ignore_for_file: use_key_in_widget_constructors, unnecessary_string_interpolations, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qurandigital/app/pallete/color_pallete.dart';
import 'package:qurandigital/model/detail_surah.dart' as detail;
import 'package:qurandigital/model/surah.dart';
import '../controllers/detail_surah_controller.dart';

class DetailSurahView extends GetView<DetailSurahController> {
  final Surah surah = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Surah ${surah.name?.transliteration?.id?.toUpperCase() ?? 'Error...'}'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: GestureDetector(
                onTap: () => Get.defaultDialog(
                  contentPadding: EdgeInsets.all(30),
                  title: "Tafsir",
                  titleStyle: TextStyle(fontWeight: FontWeight.bold),
                  content: SizedBox(
                    height: 300,
                    width: Get.width,
                    child: ListView(
                      children: <Widget>[
                        Text(
                          "${surah.tafsir?.id ?? "Tidak ada tafsir pada surat ini"}",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: const [appPurple, appPurpleDark]),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "${surah.name?.transliteration?.id?.toUpperCase() ?? 'Error...'}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: appSoftWhite,
                          ),
                        ),
                        Text(
                          "(${surah.name?.translation?.id?.toUpperCase() ?? 'Error...'})",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: appSoftWhite,
                          ),
                        ),
                        Text(
                          "${surah.numberOfVerses ?? 'Error...'}, Ayat  |  ${surah.revelation?.id ?? 'Error...'}",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: appSoftWhite,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            FutureBuilder<detail.DetailSurah>(
                future: controller.getDetailSurah(surah.number.toString()),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (!snapshot.hasData) {
                    return Center(
                      child: Text("Tidak Ada Data"),
                    );
                  }

                  return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: snapshot.data?.verses?.length ?? 0,
                    itemBuilder: (context, index) {
                      // ignore: prefer_is_empty
                      if (snapshot.data?.verses?.length == 0) {
                        return SizedBox();
                      }
                      detail.Verse? ayat = snapshot.data?.verses?[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: appBluePurpleDark.withOpacity(0.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/img/octago.png"),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text("${index + 1}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              Icon(Icons.book_online_outlined)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.play_arrow)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              " ${ayat!.text?.arab} ",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              " ${ayat.text?.transliteration?.en} ",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              " ${ayat.translation?.id} ",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      );
                    },
                  );
                })
          ],
        ),
      ),
    );
  }
}
