import 'package:desafio_keyworks/application/configurations/configurations_service.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/components.dart';

class ConfigurationsPage extends GetView<ConfigurationsService> {
  const ConfigurationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getConfigurations();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 36.0, top: 27),
              child: Obx(() {
                return TextFormField(
                  controller: controller.userController,
                  cursorColor: AppColors.primaryColor,
                  onChanged: controller.onChangeText,
                  decoration: InputDecoration(
                      labelText: 'Usuário',
                      suffixIcon: controller.username.value.isNotEmpty
                          ? IconButton(
                              onPressed: () => controller.clearText(),
                              icon: const Icon(
                                Icons.close,
                                color: AppColors.lightColor,
                              ),
                            )
                          : const SizedBox()),
                  keyboardType: TextInputType.emailAddress,
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tema Escuro',
                  style: TextStyle(fontSize: 16),
                ),
                Obx(() {
                  return Switch(
                      activeColor: AppColors.primaryColorDark,
                      activeTrackColor: AppColors.primaryColorLight,
                      inactiveTrackColor: AppColors.secondaryColor,
                      inactiveThumbColor: AppColors.mediumColor,
                      value: controller.isDarkMode.value,
                      onChanged: controller.changeDarkMode);
                })
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 85.0, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Idioma', style: TextStyle(fontSize: 16)),
                  Obx(() {
                    return DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        style: const TextStyle(color: AppColors.lightColor),
                        items:
                            controller.options.map<DropdownMenuItem>((items) {
                          return DropdownMenuItem(
                              value: items, child: Text(items));
                        }).toList(),
                        selectedItemHighlightColor: AppColors.secondaryColor,
                        dropdownOverButton: true,
                        dropdownDecoration:
                            const BoxDecoration(color: AppColors.greyDarkColor),
                        value: controller.dropdownOption.value,
                        itemPadding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 6.5),
                        buttonPadding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 6.5),
                        buttonDecoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: AppColors.secondaryColor),
                        buttonHeight: 40,
                        onChanged: controller.changeDropdown,
                        iconEnabledColor: AppColors.lightColor,
                        iconDisabledColor: AppColors.lightColor,
                        focusColor: AppColors.primaryColor,
                        isDense: true,
                      ),
                    );
                  })
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  controller.saveInfo();
                },
                child: Text('Salvar'.toUpperCase()))
          ],
        ),
      ),
    );
  }
}
