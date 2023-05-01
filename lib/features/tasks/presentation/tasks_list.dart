import 'package:flutter/material.dart';
import 'package:todoapp/features/tasks/presentation/task_tile.dart';
import 'package:todoapp/tasks_objects.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          taskTitle: tasksObjects[0].taskTitle,
          isChecked: tasksObjects[0].isChecked,
        ),
        TaskTile(
          taskTitle: tasksObjects[1].taskTitle,
          isChecked: tasksObjects[1].isChecked,
        ),
        TaskTile(
          taskTitle: tasksObjects[2].taskTitle,
          isChecked: tasksObjects[2].isChecked,
        ),
        TaskTile(
          taskTitle: tasksObjects[3].taskTitle,
          isChecked: tasksObjects[3].isChecked,
        ),
      ],
    );
  }
}
