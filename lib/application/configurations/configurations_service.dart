import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/entities/configurations/configurations_entity.dart';
import '../../infra/login/login.dart';

class ConfigurationsService extends GetxController {
  TextEditingController userController = TextEditingController(text: "");
  var isDarkMode = true.obs;
  var dropdownOption = 'Português (Brasil)'.obs;
  var username = "".obs;
  List options = <String>['Português (Brasil)', 'English', 'Español'];

  getConfigurations() async {
    var configurations = await LoginRepository().getConfigurations();
    userController.text = configurations.username;
    dropdownOption.value = configurations.language ?? 'Português (Brasil)';
    isDarkMode.value = configurations.isDarkMode ?? true;
    username.value = configurations.username;
  }

  changeDarkMode(bool value) {
    isDarkMode.value = value;
  }

  changeDropdown(dynamic value) {
    dropdownOption.value = value ?? "Português (Brasil)";
  }

  saveInfo() async {
    await LoginRepository().saveConfigurations(ConfigurationsEntity(
        username: userController.text,
        isDarkMode: isDarkMode.value,
        language: dropdownOption.value));
    Get.snackbar('Sucesso!', 'Suas configurações foram salvas com sucesso...');
  }

  onChangeText(String text) {
    username.value = text;
  }

  clearText() {
    userController.clear();
    username.value = "";
  }
}
