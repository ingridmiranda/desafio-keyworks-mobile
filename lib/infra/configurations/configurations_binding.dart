import 'package:get/get.dart';

import '../../application/services.dart';

class ConfigurationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfigurationsService>(() => ConfigurationsService());
    Get.put(ConfigurationsService());
  }
}
