import 'package:get/get.dart';

import '../../application/services.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginService>(() => LoginService());
    Get.put(LoginService());
  }
}
