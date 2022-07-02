import 'package:get/get.dart';

import '../controllers/pb2_ipa_controller.dart';

class Pb2IpaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb2IpaController>(
      () => Pb2IpaController(),
    );
  }
}
