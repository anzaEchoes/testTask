import 'package:flutter/material.dart';
import 'package:tasks/ui/common/atoms/our_text.dart';
import 'package:tasks/ui/common/molecules/task_list_widget.dart';
import 'package:tasks/ui/model_view/album/album_model_view.dart';

Widget asyncSnapshotTaskHelper(AsyncSnapshot snapshot) {
  Widget element = Container();
  if (snapshot.hasError) {
    element = H2(text: 'Error : ${snapshot.error.toString()}');
  } else if (!snapshot.hasData) {
    element = const Center(
      child: CircularProgressIndicator(),
    );
  } else {
    element = TaskListView(tasks: snapshot.data);
  }
  return element;
}
