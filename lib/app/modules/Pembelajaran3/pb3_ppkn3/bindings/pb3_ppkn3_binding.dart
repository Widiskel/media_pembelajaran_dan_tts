import 'package:get/get.dart';

import '../controllers/pb3_ppkn3_controller.dart';

class Pb3Ppkn3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb3Ppkn3Controller>(
      () => Pb3Ppkn3Controller(),
    );
  }
}
