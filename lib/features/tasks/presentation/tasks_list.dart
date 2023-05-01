import 'package:flutter/material.dart';
import 'package:todoapp/features/tasks/presentation/task_tile.dart';
import 'package:todoapp/tasks_objects.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasksObjects.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasksObjects[index].taskTitle,
          isChecked: tasksObjects[index].isChecked,
        );
      },
    );
  }
}
