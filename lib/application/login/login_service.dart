import 'package:desafio_keyworks/infra/login/login_repository.dart';
import 'package:get/get.dart';

class LoginService extends GetxController {
  var isLoading = false.obs;

  Future<void> doLogin() async {
    isLoading.value = true;
    await LoginRepository().doLogin();
    isLoading.value = false;
  }
}
