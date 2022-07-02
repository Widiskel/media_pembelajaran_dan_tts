import 'package:get/get.dart';

import '../controllers/pb1_ips_controller.dart';

class Pb1IpsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb1IpsController>(
      () => Pb1IpsController(),
    );
  }
}
