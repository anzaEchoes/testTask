import '../task.dart';

abstract class TaskGateway {
  Future<Task> getByID(String id);
  Future<Task> create(Task task);
  Future<String> deleteByID(String id);
  Future<Task> putByID(Task task, String id);

  Future<List<Task>> getAll();
}
