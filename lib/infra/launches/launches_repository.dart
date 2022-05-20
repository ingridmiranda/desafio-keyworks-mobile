import 'package:desafio_keyworks/application/launch/launch_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../domain/entities/entities.dart';
import '../../infra/launches/launches.dart';

class LaunchesRepository {
  final _launchesRestClient = LaunchesRestClient(Dio());

  Future<List<LaunchEntity?>?> receiveLastLaunches() async {
    var lastLaunches = <LaunchEntity?>[];
    final launchService = Get.put(LaunchService());
    try {
      lastLaunches = await _launchesRestClient.getLaunches();
      var lastFourLaunches = <LaunchEntity?>[];
      if (lastLaunches.isNotEmpty) {
        for (var i = 0; i < 4; i++) {
          lastFourLaunches.add(lastLaunches[i]);
        }
        launchService.lastFourLaunches.value = lastFourLaunches;
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
