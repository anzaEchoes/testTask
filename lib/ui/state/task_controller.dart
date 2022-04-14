import 'package:get/get.dart';
import 'package:tasks/config/use_case_config.dart';
import 'package:tasks/domain/models/task/task.dart';

class TaskController extends GetxController {
  var tasks = RxList<Task>();
  UseCaseConfig _taskConfig = UseCaseConfig();

  TaskController() {}

  getAllTaskApi() async {
    var res = await _taskConfig.gatTaskUseCase!.getAll();
    tasks.value = res;
  }

  Future<List<Task>> get getAllTask async {
    await getAllTaskApi();
    return tasks;
  }

  Future<Task> getTaskById(String id) async {
    var res = await _taskConfig.gatTaskUseCase!.getByID(id);
    return res;
  }

  Future<String> deleteTaskById(String id) async {
    var res = await _taskConfig.gatTaskUseCase!.deleteByID(id);
    getAllTaskApi();
    return res;
  }

  Future<Task> putTaskById(String id, Task task) async {
    Task res = await _taskConfig.gatTaskUseCase!.putByID(id, task);
    return res;
  }
}
