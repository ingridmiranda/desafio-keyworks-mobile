import 'package:desafio_keyworks/domain/entities/entities.dart';
import 'package:desafio_keyworks/infra/launches/launches_repository.dart';

class LaunchService {
  Future<List<LaunchEntity?>?> getLastLaunchesService() async {
    final lastLaunches = await LaunchesRepository().receiveLastLaunches();
    return lastLaunches;
  }
}
