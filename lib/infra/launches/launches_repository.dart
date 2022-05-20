import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../domain/entities/entities.dart';
import '../../infra/launches/launches.dart';

class LaunchesRepository {
  final _launchesRestClient = LaunchesRestClient(Dio());

  Future<List<LaunchEntity?>?> receiveLastLaunches() async {
    var lastLaunches = <LaunchEntity?>[];
    try {
      lastLaunches = await _launchesRestClient.getLaunches();
      var lastFourLaunches = <LaunchEntity?>[];
      if (lastLaunches.isNotEmpty) {
        for (var i = 0; i < 4; i++) {
          lastFourLaunches.add(lastLaunches[i]);
        }
        debugPrint("Deu certo");
        return lastFourLaunches;
      }
    } catch (e) {
      if (e is DioError) {
        debugPrint(
            '${e.response?.statusCode.toString()} - ${e.response?.statusMessage}');
      } else {
        debugPrint(e.toString());
      }
    }
    return null;
  }
}
