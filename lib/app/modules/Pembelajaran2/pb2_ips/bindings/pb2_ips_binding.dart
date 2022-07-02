import 'package:get/get.dart';

import '../controllers/pb2_ips_controller.dart';

class Pb2IpsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb2IpsController>(
      () => Pb2IpsController(),
    );
  }
}
