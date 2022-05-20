import 'package:desafio_keyworks/application/launch/launch_service.dart';
import 'package:get/get.dart';

import '../../domain/entities/entities.dart';
import '../../infra/launches/launches.dart';

class LoginRepository {
  final _launchesRepository = LaunchesRepository();
  final launchService = Get.put(LaunchService());

  Future<void> doLogin() async {
    await getData();
  }

  Future<List<LaunchEntity?>?> getData() async {
    var lastFourLaunches = await _launchesRepository.receiveLastLaunches();
    await launchService.getAllLaunchpads();
    return lastFourLaunches;
  }
}
