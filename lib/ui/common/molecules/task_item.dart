import 'package:flutter/material.dart';
import 'package:tasks/domain/models/task/task.dart';
import 'package:tasks/ui/common/atoms/our_text.dart';
import 'package:tasks/ui/common/molecules/button_Icon.dart';
import 'package:tasks/ui/common/molecules/form_task.dart';
import 'package:tasks/ui/common/tokens/colors.dart';
import 'package:tasks/ui/state/task_controller.dart';

class TaskItem extends StatelessWidget {
  Task task;
  TaskItem({Key? key, required this.task}) : super(key: key);
  TaskController tc = TaskController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 5),
                blurRadius: 5)
          ]),
      height: 50,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(top: 10),
      child: Row(children: [
        Expanded(
            flex: 1,
            child: TextLabel(
              text: task.id!.toString(),
              colorText: STATUS_INFO,
            )),
        Expanded(
            flex: 4,
            child: TextLabel(
              text: task.title!,
              colorText: Colors.teal,
            )),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                              content: FormText(
                            tar: task,
                          )));
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              IconButton(
                  onPressed: () {
                    tc.deleteTaskById(task.id.toString());
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
