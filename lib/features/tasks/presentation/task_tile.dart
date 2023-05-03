// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.taskTitle,
    required this.isChecked,
    required this.changeChecked,
    required this.deleteTask,
  }) : super(key: key);
  final String taskTitle;
  final bool? isChecked;
  final void Function(bool?) changeChecked;
  final void Function() deleteTask;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: changeChecked,
      ),
      onLongPress: deleteTask,
    );
  }
}
