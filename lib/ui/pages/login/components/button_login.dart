import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../application/services.dart';
import '../../../components/app_colors.dart';
import '../../pages.dart';

class ButtonLogin extends GetView<LoginService> {
  const ButtonLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginService());
    return Obx(() {
      return ElevatedButton(
          onPressed: () async {
            await controller.doLogin();
            Get.to(() => const HomePage());
          },
          child: controller.isLoading.value
              ? const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: CircularProgressIndicator(
                    color: AppColors.lightColor,
                  ),
                )
              : Text('Acessar'.toUpperCase()));
    });
  }
}
