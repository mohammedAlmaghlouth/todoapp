// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  TaskTile({
    super.key,
    required this.taskTitle,
    this.isChecked,
  });
  final String taskTitle;
  bool? isChecked;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskTitle,
        style: TextStyle(
          decoration: widget.isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: widget.isChecked,
        onChanged: (newValue) {
          setState(() {
            widget.isChecked = newValue;
          });
        },
      ),
    );
  }
}
