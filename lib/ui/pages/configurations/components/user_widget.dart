import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../application/services.dart';
import '../../../components/components.dart';

class UserWidget extends GetView<ConfigurationsService> {
  const UserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
