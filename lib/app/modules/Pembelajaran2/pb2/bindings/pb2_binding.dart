import 'package:get/get.dart';

import '../controllers/pb2_controller.dart';

class Pb2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb2Controller>(
      () => Pb2Controller(),
    );
  }
}
