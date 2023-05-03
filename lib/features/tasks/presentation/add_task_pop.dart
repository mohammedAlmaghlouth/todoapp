// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/features/tasks/data/task_data.dart';

class AddTaskPop extends StatelessWidget {
  const AddTaskPop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.indigo[400],
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
              foregroundColor: Colors.white,
            ),
            child: const Text(
              'Add',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
