import 'package:desafio_keyworks/application/login/login_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/components.dart';

class EmailInput extends GetView<LoginService> {
  const EmailInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextFormField(
        controller: controller.emailController,
        cursorColor: AppColors.primaryColor,
        onChanged: controller.onChangeEmail,
        decoration: InputDecoration(
            labelText: 'Usuário',
            suffixIcon: controller.email.value.isNotEmpty
                ? IconButton(
                    onPressed: () => controller.clearEmail(),
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.lightColor,
                    ),
                  )
                : const SizedBox()),
        keyboardType: TextInputType.emailAddress,
      );
    });
  }
}
