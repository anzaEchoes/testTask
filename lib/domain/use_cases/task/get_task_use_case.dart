import 'package:tasks/domain/models/task/gateway/task_gateway.dart';
import 'package:tasks/domain/models/task/task.dart';

class GetTaskUseCase {
  final TaskGateway _taskGateway;
  GetTaskUseCase(this._taskGateway);

  Future<Task> getByID(String id) async {
    return this._taskGateway.getByID(id);
  }

  Future<Task> create(Task task) async {
    return this._taskGateway.create(task);
  }

  Future<String> deleteByID(String id) async {
    return this._taskGateway.deleteByID(id);
  }

  Future<Task> putByID(String id, Task task) async {
    return this._taskGateway.putByID(task, id);
  }

  Future<List<Task>> getAll() async {
    return this._taskGateway.getAll();
  }
}
