import 'package:get/get.dart';

import '../controllers/tts2_controller.dart';

class Tts2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Tts2Controller>(
      () => Tts2Controller(),
    );
  }
}
