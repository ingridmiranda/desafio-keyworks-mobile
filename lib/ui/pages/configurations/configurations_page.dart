import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/services.dart';
import '../../pages/configurations/components/components.dart';

class ConfigurationsPage extends GetView<ConfigurationsService> {
  const ConfigurationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getConfigurations();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            UserWidget(),
            DarkModeWidget(),
            LanguageWidget(),
            SaveButton()
          ],
        ),
      ),
    );
  }
}
