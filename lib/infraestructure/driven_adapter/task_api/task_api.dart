import 'package:dio/dio.dart';
import 'package:tasks/data/constants.dart';
import 'package:tasks/domain/models/task/gateway/task_gateway.dart';
import 'package:tasks/domain/models/task/task.dart';
import 'package:tasks/infraestructure/helpers/maps/task/task_mapper.dart';

class TaskApi extends TaskGateway {
  final TaskMapper _taskMapper = TaskMapper();
  var dio = Dio();
  @override
  Future<List<Task>> getAll() async {
    var response = await dio.request(
      Urls.getAllTask(),
      options: Urls.options("GET"),
    );
    if (response.statusCode == 200) {
      return _taskMapper.fromListMap(response.data);
    } else {
      return [];
    }
  }

  @override
  Future<Task> getByID(String id) async {
    var response = await dio.request(
      Urls.getTaskById(id),
      options: Urls.options("GET"),
    );
    if (response.statusCode == 200) {
      return _taskMapper.fromMap(response.data[0]);
    } else {
      return Task();
    }
  }

  @override
  Future<Task> create(Task task) async {
    var response = await dio.request(Urls.postTask(),
        options: Urls.options("POST"),
        queryParameters: _taskMapper.toJson(task));
    if (response.statusCode == 201) {
      return _taskMapper.fromMap(response.data["task"]);
    } else {
      return Task();
    }
  }

  @override
  Future<String> deleteByID(String id) async {
    var response = await dio.request(
      Urls.deleteTaskById(id),
      options: Urls.options("DELETE"),
    );
    return response.data["detail"];
  }

  @override
  Future<Task> putByID(Task task, String id) async {
    var response = await dio.request(Urls.putTaskById(id),
        options: Urls.options("PUT"),
        queryParameters: _taskMapper.toJson(task));
    if (response.statusCode == 201) {
      return _taskMapper.fromMap(response.data["task"]);
    } else {
      return Task();
    }
  }
}
