// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:todoapp/features/tasks/model/task.dart';
import 'package:todoapp/features/tasks/presentation/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
    required this.tasks,
  }) : super(key: key);
  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].taskTitle,
          isChecked: widget.tasks[index].isChecked,
          changeChecked: (newValue) {
            setState(
              () {
                widget.tasks[index].changeCheck();
              },
            );
          },
        );
      },
    );
  }
}
