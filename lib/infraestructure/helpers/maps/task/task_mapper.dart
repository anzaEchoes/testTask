import 'package:tasks/domain/models/task/task.dart';
import 'package:tasks/infraestructure/helpers/maps/common/base_mapper.dart';

class TaskMapper implements BaseMapper<Task> {
  @override
  fromMap(Map<String, dynamic> json) => Task(
        id: json["id"],
        title: json["title"],
        isCompleted: json["isCompleted"],
        dueDate: json["dueDate"],
        comments: json["comments"],
        description: json["description"],
        tags: json["tags"],
        token: json["token"],
        updatedAt: json["updatedAt"],
        createdAt: json["createdAt"],
      );

  fromListMap(List<dynamic> json) {
    List<Task> _tasks = [];

    for (var i = 0; i < json.length; i++) {
      _tasks.add(Task(
        id: json[i]["id"],
        title: json[i]["title"],
        isCompleted: json[i]["isCompleted"],
        dueDate: json[i]["dueDate"],
        comments: json[i]["comments"],
        description: json[i]["description"],
        tags: json[i]["tags"],
        token: json[i]["token"],
        updatedAt: json[i]["updatedAt"],
        createdAt: json[i]["createdAt"],
      ));
    }
    return _tasks;
  }

  Map<String, dynamic> toJson(Task task) => {
        "title": task.title,
        "is_completed": task.isCompleted ?? "0",
        "comments": task.comments ?? "",
        "description": task.description ?? "",
        "tags": task.tags ?? "",
        "token": task.token ?? "",
        "id": task.id ?? "",
      };
}
