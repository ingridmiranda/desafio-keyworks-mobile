import 'package:desafio_keyworks/domain/entities/configurations/configurations_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get.dart';

import '../../application/services.dart';
import '../ui/components/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initialize();
  runApp(const App());
}

initialize() {
  initHive();
  registerAdapters();
  initServices();
}

initHive() async {
  await Hive.initFlutter();
}

registerAdapters() {
  Hive.registerAdapter<ConfigurationsEntity>(ConfigurationsEntityAdapter());
}

initServices() {
  Get.put(LoginService());
  Get.put(LaunchService());
  Get.put(ConfigurationsService());
}
