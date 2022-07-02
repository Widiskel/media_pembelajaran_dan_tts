import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:crossword_mp/app/pallete/color_pallete.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';

import '../../home/views/home_view.dart';
import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  const ProfilView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeView()),
        );
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              constraints: BoxConstraints.expand(),
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
                    Get.offAllNamed(Routes.HOME);
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
              margin:
                  EdgeInsets.only(left: 32, right: 32, top: 200, bottom: 125),
              decoration: BoxDecoration(
                  color: appWhite.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(80)),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: 30, right: 30, top: 200, bottom: 120),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/bingkai.png'),
                    fit: BoxFit.fill),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        "Nama      : Monkey d luffy",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "Alamat    : Blue sea",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "Cita-Cita : Raja bajak Laut",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "Motto     : Jika kau lapar, maka makanlah",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 90),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/user.png'),
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
