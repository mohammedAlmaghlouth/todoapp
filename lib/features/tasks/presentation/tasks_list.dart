import 'package:flutter/material.dart';
import 'package:todoapp/features/tasks/presentation/task.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Task(),
        Task(),
        Task(),
      ],
    );
  }
}
