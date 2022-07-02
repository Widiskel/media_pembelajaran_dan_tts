import 'package:get/get.dart';

import '../controllers/pb3_ppkn_controller.dart';

class Pb3PpknBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb3PpknController>(
      () => Pb3PpknController(),
    );
  }
}
