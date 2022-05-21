import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../application/services.dart';
import '../../../components/app_colors.dart';

class LanguageWidget extends GetView<ConfigurationsService> {
  const LanguageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 85.0, top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Idioma', style: TextStyle(fontSize: 16)),
          Obx(() {
            return DropdownButtonHideUnderline(
              child: DropdownButton2(
                style: const TextStyle(color: AppColors.lightColor),
                items: controller.options.map<DropdownMenuItem>((items) {
                  return DropdownMenuItem(value: items, child: Text(items));
                }).toList(),
                selectedItemHighlightColor: AppColors.secondaryColor,
                dropdownOverButton: true,
                dropdownDecoration:
                    const BoxDecoration(color: AppColors.greyDarkColor),
                value: controller.dropdownOption.value,
                itemPadding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 6.5),
                buttonPadding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 6.5),
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
    );
  }
}
