import 'package:get/get.dart';

import '../controllers/pb3_ppkn2_controller.dart';

class Pb3Ppkn2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pb3Ppkn2Controller>(
      () => Pb3Ppkn2Controller(),
    );
  }
}
