// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/features/tasks/data/task_data.dart';

import 'package:todoapp/features/tasks/presentation/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].taskTitle,
              isChecked: taskData.tasks[index].isChecked,
              changeChecked: (newValue) {
                // setState(
                //   () {
                //     widget.tasks[index].changeCheck();
                //   },
                // );
              },
            );
          },
        );
      },
    );
  }
}
