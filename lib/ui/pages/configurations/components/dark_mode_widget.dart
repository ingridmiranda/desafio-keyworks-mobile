import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../application/services.dart';
import '../../../components/components.dart';

class DarkModeWidget extends GetView<ConfigurationsService> {
  const DarkModeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
