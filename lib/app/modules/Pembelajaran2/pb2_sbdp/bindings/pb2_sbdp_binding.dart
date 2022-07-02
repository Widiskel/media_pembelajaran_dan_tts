import 'package:get/get.dart';

import '../controllers/pb2_sbdp_controller.dart';

class Pb2SbdpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb2SbdpController>(
      () => Pb2SbdpController(),
    );
  }
}
