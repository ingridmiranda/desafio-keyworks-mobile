import '../../domain/entities/entities.dart';
import '../../infra/launches/launches.dart';

class LoginRepository {
  final _launchesRepository = LaunchesRepository();
  Future<void> doLogin() async {
    await getData();
  }

  Future<List<LaunchEntity?>?> getData() async {
    return await _launchesRepository.receiveLastLaunches();
  }
}
