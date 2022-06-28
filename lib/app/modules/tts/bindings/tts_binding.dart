import 'package:get/get.dart';

import '../controllers/tts_controller.dart';

class TtsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TtsController>(
      () => TtsController(),
    );
  }
}
