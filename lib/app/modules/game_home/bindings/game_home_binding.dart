import 'package:get/get.dart';

import '../controllers/game_home_controller.dart';

class GameHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameHomeController>(
      () => GameHomeController(),
    );
  }
}
