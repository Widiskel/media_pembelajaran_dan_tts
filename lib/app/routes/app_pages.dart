import 'package:get/get.dart';
import 'package:media_pembelajaran_dan_tts/app/modules/tts/bindings/tts_binding.dart';
import 'package:media_pembelajaran_dan_tts/app/modules/tts/views/tts_view.dart';

import '../modules/landing_page/bindings/landing_page_binding.dart';
import '../modules/landing_page/views/landing_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static final routes = [
    GetPage(
      name: _Paths.LANDING_PAGE,
      page: () => const LandingPageView(),
      binding: LandingPageBinding(),
    ),
    GetPage(
      name: _Paths.TTS,
      page: () => const TtsView(),
      binding: TtsBinding(),
    ),
  ];
}
