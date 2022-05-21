import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../application/services.dart';
import '../../domain/entities/entities.dart';
import '../../infra/login/login.dart';

class LoginService extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isLoading = false.obs;
  var email = "".obs;
  var password = "".obs;

  Future<void> doLogin() async {
    isLoading.value = true;
    await LoginRepository().doLogin(emailController.text);
    isLoading.value = false;
    Get.put(ConfigurationsService().getConfigurations());
  }

  Future<ConfigurationsEntity> getConfigurations() async {
    return await LoginRepository().getConfigurations();
  }

  onChangeEmail(String text) {
    email.value = text;
  }

  onChangePassword(String text) {
    password.value = text;
  }

  clearEmail() {
    emailController.clear();
    email.value = "";
  }

  clearPassword() {
    passwordController.clear();
    password.value = "";
  }
}
