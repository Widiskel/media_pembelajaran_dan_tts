import 'package:get/get.dart';

import '../modules/Pembelajaran1/pb1/bindings/pb1_binding.dart';
import '../modules/Pembelajaran1/pb1/views/pb1_view.dart';
import '../modules/Pembelajaran1/pb1_bi/bindings/pb1_bi_binding.dart';
import '../modules/Pembelajaran1/pb1_bi/views/pb1_bi_view.dart';
import '../modules/Pembelajaran1/pb1_ipa/bindings/pb1_ipa_binding.dart';
import '../modules/Pembelajaran1/pb1_ipa/views/pb1_ipa_view.dart';
import '../modules/Pembelajaran1/pb1_ips/bindings/pb1_ips_binding.dart';
import '../modules/Pembelajaran1/pb1_ips/views/pb1_ips_view.dart';
import '../modules/Pembelajaran2/pb2/bindings/pb2_binding.dart';
import '../modules/Pembelajaran2/pb2/views/pb2_view.dart';
import '../modules/Pembelajaran2/pb2_bi/bindings/pb2_ips_binding.dart';
import '../modules/Pembelajaran2/pb2_bi/views/pb2_bi_view.dart';
import '../modules/Pembelajaran2/pb2_ipa/bindings/pb2_ipa_binding.dart';
import '../modules/Pembelajaran2/pb2_ipa/views/pb2_ipa_view.dart';
import '../modules/Pembelajaran2/pb2_sbdp/bindings/pb2_sbdp_binding.dart';
import '../modules/Pembelajaran2/pb2_sbdp/views/pb2_sbdp_view.dart';
import '../modules/Pembelajaran3/pb3/bindings/pb3_binding.dart';
import '../modules/Pembelajaran3/pb3/views/pb3_view.dart';
import '../modules/Pembelajaran3/pb3_ppkn/bindings/pb3_ppkn_binding.dart';
import '../modules/Pembelajaran3/pb3_ppkn/views/pb3_ppkn_view.dart';
import '../modules/Pembelajaran3/pb3_ppkn2/bindings/pb3_ppkn2_binding.dart';
import '../modules/Pembelajaran3/pb3_ppkn2/views/pb3_ppkn2_view.dart';
import '../modules/Pembelajaran3/pb3_ppkn3/bindings/pb3_ppkn3_binding.dart';
import '../modules/Pembelajaran3/pb3_ppkn3/views/pb3_ppkn3_view.dart';
import '../modules/game_home/bindings/game_home_binding.dart';
import '../modules/game_home/views/game_home_view.dart';
import '../modules/help/bindings/help_binding.dart';
import '../modules/help/views/help_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kdki/bindings/kdki_binding.dart';
import '../modules/kdki/views/kdki_view.dart';
import '../modules/landing_page/bindings/landing_page_binding.dart';
import '../modules/landing_page/views/landing_page_view.dart';
import '../modules/materi/bindings/materi_binding.dart';
import '../modules/materi/views/materi_view.dart';
import '../modules/profil/bindings/profil_binding.dart';
import '../modules/profil/views/profil_view.dart';
import '../modules/tts/bindings/tts_binding.dart';
import '../modules/tts/views/tts_view.dart';
import '../modules/tts2/bindings/tts2_binding.dart';
import '../modules/tts2/views/tts2_view.dart';
import '../modules/tts3/bindings/tts3_binding.dart';
import '../modules/tts3/views/tts3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static final routes = [
    GetPage(
      name: _Paths.LANDING_PAGE,
      page: () => LandingPageView(),
      binding: LandingPageBinding(),
    ),
    GetPage(
      name: _Paths.TTS,
      page: () => TtsView(),
      binding: TtsBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.MATERI,
      page: () => MateriView(),
      binding: MateriBinding(),
    ),
    GetPage(
      name: _Paths.KDKI,
      page: () => KdkiView(),
      binding: KdkiBinding(),
    ),
    GetPage(
      name: _Paths.GAME_HOME,
      page: () => GameHomeView(),
      binding: GameHomeBinding(),
    ),
    GetPage(
      name: _Paths.PB1,
      page: () => Pb1View(),
      binding: Pb1Binding(),
    ),
    GetPage(
      name: _Paths.TTS2,
      page: () => Tts2View(),
      binding: Tts2Binding(),
    ),
    GetPage(
      name: _Paths.TTS3,
      page: () => Tts3View(),
      binding: Tts3Binding(),
    ),
    GetPage(
      name: _Paths.PB1_BI,
      page: () => Pb1BiView(),
      binding: Pb1BiBinding(),
    ),
    GetPage(
      name: _Paths.PB1_IPA,
      page: () => Pb1IpaView(),
      binding: Pb1IpaBinding(),
    ),
    GetPage(
      name: _Paths.PB1_IPS,
      page: () => Pb1IpsView(),
      binding: Pb1IpsBinding(),
    ),
    GetPage(
      name: _Paths.PB2,
      page: () => Pb2View(),
      binding: Pb2Binding(),
    ),
    GetPage(
      name: _Paths.PB2_BI,
      page: () => Pb2BIView(),
      binding: Pb2BiBinding(),
    ),
    GetPage(
      name: _Paths.PB2_IPA,
      page: () => Pb2IpaView(),
      binding: Pb2IpaBinding(),
    ),
    GetPage(
      name: _Paths.PB2_SBDP,
      page: () => Pb2SbdpView(),
      binding: Pb2SbdpBinding(),
    ),
    GetPage(
      name: _Paths.PB3,
      page: () => Pb3View(),
      binding: Pb3Binding(),
    ),
    GetPage(
      name: _Paths.PB3_PPKN,
      page: () => Pb3PpknView(),
      binding: Pb3PpknBinding(),
    ),
    GetPage(
      name: _Paths.PB3_PPKN2,
      page: () => Pb3Ppkn2View(),
      binding: Pb3Ppkn2Binding(),
    ),
    GetPage(
      name: _Paths.PB3_PPKN3,
      page: () => Pb3Ppkn3View(),
      binding: Pb3Ppkn3Binding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => HelpView(),
      binding: HelpBinding(),
    ),
  ];
}
