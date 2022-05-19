import 'package:desafio_keyworks/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../domain/entities/entities.dart';

part 'launches_rest_client.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class LaunchesRestClient {
  factory LaunchesRestClient(Dio dio, {String baseUrl}) = _LaunchesRestClient;

  @GET("/launches/upcoming/")
  Future<List<LaunchEntity>> getLaunches();
}
