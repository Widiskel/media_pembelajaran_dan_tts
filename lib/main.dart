// ignore_for_file: prefer_const_constructors, unused_import

import 'package:crossword_mp/app/modules/player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:crossword_mp/app/routes/app_pages.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Get.put(APlayer(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final aPlay = Get.put(
    APlayer(),
    permanent: true,
  );
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return GetMaterialApp(
      title: "Media Pembelajaran dan TTS",
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.LANDING_PAGE,
      getPages: AppPages.routes,
    );
  }
}
