import 'package:get/get.dart';

import '../controllers/pb3_controller.dart';

class Pb3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb3Controller>(
      () => Pb3Controller(),
    );
  }
}
