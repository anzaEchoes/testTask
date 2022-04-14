import 'package:flutter/material.dart';
import 'package:tasks/ui/common/molecules/form_task.dart';
import 'package:tasks/ui/common/tokens/colors.dart';
import 'package:tasks/ui/common/tokens/typography.dart';

class FloatingButtonAddTask extends StatelessWidget {
  FloatingButtonAddTask();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: STATUS_SUCCESS,
        child: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(content: FormText()));
          },
          icon: Icon(Icons.add),
        ),
        onPressed: () {});
  }
}
