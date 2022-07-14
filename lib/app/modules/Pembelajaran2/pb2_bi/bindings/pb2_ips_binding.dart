import 'package:get/get.dart';

import '../controllers/pb2_bi_controller.dart';

class Pb2BiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb2BiController>(
      () => Pb2BiController(),
    );
  }
}
