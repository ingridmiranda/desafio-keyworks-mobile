import 'package:desafio_keyworks/application/launch/launch_service.dart';
import 'package:desafio_keyworks/domain/entities/configurations/configurations_entity.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

import '../../domain/entities/entities.dart';
import '../../infra/launches/launches.dart';

class LoginRepository {
  final _launchesRepository = LaunchesRepository();
  final launchService = Get.put(LaunchService());

  Future<void> doLogin(String username) async {
    await saveConfigurations(ConfigurationsEntity(username: username));
    await getData();
  }

  Future<List<LaunchEntity?>?> getData() async {
    var lastFourLaunches = await _launchesRepository.receiveLastLaunches();
    await launchService.getAllLaunchpads();
    return lastFourLaunches;
  }

  Future<ConfigurationsEntity> saveConfigurations(
      ConfigurationsEntity configurations) async {
    var box = await Hive.openBox('configurations');
    await box.clear();
    await box.add(configurations);
    return await box.getAt(0);
  }

  Future<ConfigurationsEntity> getConfigurations() async {
    ConfigurationsEntity configurations = ConfigurationsEntity(username: '');
    var box = await Hive.openBox('configurations');
    if (box.isNotEmpty) {
      configurations = await box.getAt(0);
    }
    return configurations;
  }
}
