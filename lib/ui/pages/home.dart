import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tasks/config/use_case_config.dart';
import 'package:tasks/domain/models/task/task.dart';
import 'package:tasks/ui/common/molecules/floating_button_add_task.dart';
import 'package:tasks/ui/common/molecules/our_footer.dart';
import 'package:tasks/ui/common/molecules/our_header.dart';
import 'package:tasks/ui/common/tokens/colors.dart';
import 'package:tasks/ui/helpers/async_snapshot_album_helper.dart';
import 'package:tasks/ui/state/task_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskCtrl = Get.put(TaskController());

    return Scaffold(
      backgroundColor: STATUS_INFO,
      appBar: OurAppBar(),
      floatingActionButton: FloatingButtonAddTask(),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: FutureBuilder(
              key: const Key('futureBuilder'),
              future: taskCtrl.getAllTask,
              builder: (BuildContext context, AsyncSnapshot snapshot) =>
                  asyncSnapshotTaskHelper(snapshot))),
    );
  }
}
