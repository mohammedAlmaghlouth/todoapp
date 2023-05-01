import 'package:flutter/material.dart';
import 'package:todoapp/features/tasks/presentation/check_done.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool? isDone = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'go shopping',
        style: TextStyle(
          decoration: isDone! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: CheckDone(
        isDone: isDone,
        checkChanged: (newValue) {
          setState(
            () {
              isDone = newValue;
            },
          );
        },
      ),
    );
  }
}
