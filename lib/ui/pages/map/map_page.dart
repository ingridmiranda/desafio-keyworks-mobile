import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../application/services.dart';
import '../../pages/map/components/components.dart';

class MapPage extends GetView<LaunchService> {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.initMaps();

    return Obx(() {
      return controller.isLoadingMap.value
          ? const LoadingWidget()
          : const MapWidget();
    });
  }
}
