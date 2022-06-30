import 'package:get/get.dart';

import '../controllers/kdki_controller.dart';

class KdkiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KdkiController>(
      () => KdkiController(),
    );
  }
}
