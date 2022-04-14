import 'package:flutter/material.dart';
import 'package:tasks/domain/models/task/task.dart';
import 'package:tasks/ui/common/molecules/task_item.dart';

class TaskListView extends StatelessWidget {
  List<Task>? tasks = [];

  TaskListView({Key? key, this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks!.length,
        itemBuilder: (BuildContext context, int index) {
          return TaskItem(task: tasks![index]);
        });
  }
}
