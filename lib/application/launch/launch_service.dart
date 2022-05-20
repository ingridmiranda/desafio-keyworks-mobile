import 'package:get/get.dart';

import '../../domain/entities/entities.dart';
import '../../infra/launches/launches_repository.dart';

class LaunchService extends GetxController {
  var lastFourLaunches = <LaunchEntity>[];

  Future<List<LaunchEntity?>?> getLastLaunchesService() async {
    final lastFourLaunches = await LaunchesRepository().receiveLastLaunches();
    return lastFourLaunches;
  }
}
