import 'package:tasks/domain/use_cases/task/get_task_use_case.dart';
import 'package:tasks/infraestructure/driven_adapter/task_api/task_api.dart';

class UseCaseConfig {
  GetTaskUseCase? gatTaskUseCase;
  TaskApi? _taskApi;

  UseCaseConfig() {
    _taskApi = TaskApi();
    gatTaskUseCase = GetTaskUseCase(_taskApi!);
  }
}
