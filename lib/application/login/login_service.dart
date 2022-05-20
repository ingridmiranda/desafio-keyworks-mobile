import 'package:get/get.dart';

import '../../infra/login/login.dart';

class LoginService extends GetxController {
  var isLoading = false.obs;

  Future<void> doLogin() async {
    isLoading.value = true;
    await LoginRepository().doLogin();
    isLoading.value = false;
  }
}
