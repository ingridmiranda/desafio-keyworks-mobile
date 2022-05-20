import 'package:desafio_keyworks/domain/entities/entities.dart';
import 'package:desafio_keyworks/infra/launches/launches_repository.dart';
import 'package:get/get.dart';

class LaunchService extends GetxController {
  var lastFourLaunches = <LaunchEntity>[];

  Future<List<LaunchEntity?>?> getLastLaunchesService() async {
    final lastFourLaunches = await LaunchesRepository().receiveLastLaunches();
    return lastFourLaunches;
  }
}
