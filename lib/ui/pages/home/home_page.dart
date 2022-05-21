import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/services.dart';
import './components/components.dart';

class HomePage extends GetView<LaunchService> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(controller.titleList[controller.currentIndex.value]),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
        ),
        bottomNavigationBar: BottomNavigationHome(
            currentIndex: controller.currentIndex.value,
            onTap: controller.setMenuOption,
            currentColor: controller.currentColor),
        body: controller.widgetsList[controller.currentIndex.value],
      );
    });
  }
}
