import 'package:dio/dio.dart';

class Urls {
  static const String baseUrl = 'https://ecsdevapi.nextline.mx';
  static const String apiKey =
      'e864a0c9eda63181d7d65bc73e61e3dc6b74ef9b82f7049f1fc7d9fc8f29706025bd271d1ee1822b15d654a84e1a0997b973a46f923cc9977b3fcbb064179ecd';

  static const String token = 'jor';

  static Map<String, String> headers = {
    "Authorization": "Bearer " + apiKey,
    "Content-Type": "application/x-www-form-urlencoded"
  };

  static Options options(String verb) =>
      Options(method: verb.toLowerCase(), headers: headers);

  static String getTaskById(String id) =>
      baseUrl + "/vdev/tasks-challenge/tasks/" + id + "?" + "token=" + token;

  static String getAllTask() =>
      baseUrl + "/vdev/tasks-challenge/tasks?token=" + token;

  static String postTask() =>
      baseUrl + "/vdev/tasks-challenge/tasks?token=" + token;

  static String putTaskById(String id) =>
      baseUrl + "/vdev/tasks-challenge/tasks/" + id + "?" + "token=" + token;

  static String deleteTaskById(String id) =>
      baseUrl + "/vdev/tasks-challenge/tasks/" + id + "?" + "token=" + token;
}
