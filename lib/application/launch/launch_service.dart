import 'package:get/get.dart';

import '../../domain/entities/entities.dart';
import '../../infra/launches/launches_repository.dart';

class LaunchService extends GetxController {
  var lastFourLaunches = <LaunchEntity?>[].obs;

  Future<List<LaunchEntity?>?> getLastLaunchesService() async {
    final lastFourLaunches = await LaunchesRepository().receiveLastLaunches();
    return lastFourLaunches;
  }

  convertDateAndHour(DateTime? date) {
    String dateConverted = "Sem data informada";
    if (date != null) {
      dateConverted =
          '${date.day} de ${convertMonth(date.month)} de ${date.year}, ${showCorrectHour(date.hour)}:${showCorrectHour(date.minute)}';
    }
    return dateConverted;
  }

  showCorrectHour(int value) {
    if (value < 10) {
      return '0$value';
    } else {
      return '$value';
    }
  }

  convertMonth(int month) {
    switch (month) {
      case 1:
        return 'Janeiro';
      case 2:
        return 'Fevereiro';
      case 3:
        return 'Março';
      case 4:
        return 'Abril';
      case 5:
        return 'Maio';
      case 6:
        return 'Junho';
      case 7:
        return 'Julho';
      case 8:
        return 'Agosto';
      case 9:
        return 'Setembro';
      case 10:
        return 'Outubro';
      case 11:
        return 'Novembro';
      case 12:
        return 'Dezembro';
      default:
    }
  }
}
