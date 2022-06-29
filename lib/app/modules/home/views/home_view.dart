import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:media_pembelajaran_dan_tts/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/menu.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Text(""),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        width: 1,
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/img/tombol_petunjuk.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        width: 1,
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/img/kd.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        width: 1,
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/img/t_materi.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  //game
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        width: 1,
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/img/tombol game.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () => Get.offAllNamed(Routes.TTS),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              //profil
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/img/prof.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () => Get.offAllNamed(Routes.PROFIL),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
