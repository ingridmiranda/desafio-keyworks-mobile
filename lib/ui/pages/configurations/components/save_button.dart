import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../application/services.dart';

class SaveButton extends GetView<ConfigurationsService> {
  const SaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          controller.saveInfo();
        },
        child: Text('Salvar'.toUpperCase()));
  }
}
