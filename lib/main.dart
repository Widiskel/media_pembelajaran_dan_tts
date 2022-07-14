// ignore_for_file: prefer_const_constructors, unused_import

import 'package:crossword_mp/app/modules/player.dart';
import 'package:crossword_mp/app/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';

void main() async {
  runApp(MyApp());
}

final aPlay = Get.put(
  APlayer(),
  permanent: true,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        print(snapshot);
        if (snapshot.connectionState == ConnectionState.waiting) {
          WidgetsBinding widgetsBinding =
              WidgetsFlutterBinding.ensureInitialized();
          SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp],
          );
          FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
          return SplashScreen();
        } else {
          SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
          SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
          FlutterNativeSplash.remove();
          return FutureBuilder(
              future: Future.delayed(Duration(seconds: 3)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return SplashScreen();
                } else {
                  aPlay.bgmPlayorPause();
                  return GetMaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: "Media Pembelajaran dan TTS",
                    initialRoute: Routes.LANDING_PAGE,
                    getPages: AppPages.routes,
                  );
                }
              });
        }
      },
    );
  }
}
