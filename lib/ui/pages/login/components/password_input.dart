import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../application/services.dart';
import '../../../components/components.dart';

class PasswordInput extends GetView<LoginService> {
  const PasswordInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextFormField(
        controller: controller.passwordController,
        onChanged: controller.onChangePassword,
        cursorColor: AppColors.primaryColor,
        style: const TextStyle(color: AppColors.lightColor),
        decoration: InputDecoration(
            labelText: 'Senha',
            suffixIcon: controller.password.value.isNotEmpty
                ? IconButton(
                    onPressed: () => controller.passwordController.clear(),
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.lightColor,
                    ))
                : const SizedBox()),
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
      );
    });
  }
}
