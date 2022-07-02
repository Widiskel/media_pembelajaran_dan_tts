import 'package:get/get.dart';

import '../controllers/tts3_controller.dart';

class Tts3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Tts3Controller>(
      () => Tts3Controller(),
    );
  }
}
