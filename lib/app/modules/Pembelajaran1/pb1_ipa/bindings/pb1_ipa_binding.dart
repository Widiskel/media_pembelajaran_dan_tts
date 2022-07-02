import 'package:get/get.dart';

import '../controllers/pb1_ipa_controller.dart';

class Pb1IpaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb1IpaController>(
      () => Pb1IpaController(),
    );
  }
}
