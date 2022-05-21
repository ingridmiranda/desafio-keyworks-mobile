import 'package:get/get.dart';

import '../../application/services.dart';

class LaunchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaunchService>(() => LaunchService());
    Get.put(LaunchService());
  }
}
