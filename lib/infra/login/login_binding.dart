import 'package:get/get.dart';

import 'package:desafio_keyworks/application/login/login_service.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginService>(() => LoginService());
    Get.put(LoginService());
  }
}
