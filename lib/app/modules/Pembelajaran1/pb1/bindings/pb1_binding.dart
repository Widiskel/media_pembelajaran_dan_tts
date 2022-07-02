import 'package:get/get.dart';

import '../controllers/pb1_controller.dart';

class Pb1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb1Controller>(
      () => Pb1Controller(),
    );
  }
}
