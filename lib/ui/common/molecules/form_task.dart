import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks/config/use_case_config.dart';
import 'package:tasks/domain/models/task/task.dart';
import 'package:tasks/ui/common/atoms/input.dart';
import 'package:tasks/ui/common/atoms/our_text.dart';
import 'package:tasks/ui/common/molecules/boton.dart';

class FormText extends StatelessWidget {
  Task? tar;
  FormText({Key? key, this.tar}) : super(key: key);

  TextEditingController titleController = TextEditingController(text: "");
  TextEditingController commentsController = TextEditingController(text: "");
  TextEditingController descriptionController = TextEditingController(text: "");
  TextEditingController tagsController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    if (tar != null) {
      titleController.text = tar!.title!;
      commentsController.text = tar!.comments == null ? "" : tar!.comments!;
      descriptionController.text = tar!.description ?? "";
      tagsController.text = tar!.tags ?? "";
    }
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          H1(
            text: tar == null ? "Add Task" : "Edit Task",
          ),
          Input(
            icon: Icons.title,
            placeholder: "tittle",
            textController: titleController,
          ),
          Input(
            icon: Icons.comment,
            placeholder: "comments",
            textController: commentsController,
          ),
          Input(
            icon: Icons.text_fields,
            placeholder: "description",
            textController: descriptionController,
          ),
          Button(
            event: () {
              closeModal(context);
            },
            height: 50,
            text: "Cancelar",
            colorBackground: Colors.red,
            colorFont: Colors.white,
            radius: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          Button(
            height: 60,
            event: () {
              save(context);
            },
            text: "Crear",
            colorBackground: Colors.blue,
            colorFont: Colors.white,
            radius: 30,
          ),
        ],
      ),
    );
  }

  closeModal(context) {
    Navigator.of(context, rootNavigator: true).pop('dialog');
  }

  save(context) {
    if (titleController.text.trim() != "") {
      UseCaseConfig _taskConfig = UseCaseConfig();

      Task task = Task(
          title: titleController.text,
          isCompleted: "0",
          comments: commentsController.text,
          description: descriptionController.text,
          token: "jor",
          tags: tagsController.text);
      if (tar == null) {
        _taskConfig.gatTaskUseCase!.create(task);
      } else {
        _taskConfig.gatTaskUseCase!.putByID(tar!.id.toString(), task);
      }
      closeModal(context);
    } else {
      Get.snackbar("Error", "Inserte Datos");
    }
  }
}
