import 'package:get/get.dart';

import '../controllers/pb1_bi_controller.dart';

class Pb1BiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb1BiController>(
      () => Pb1BiController(),
    );
  }
}
