import 'package:flutter/material.dart';

class AddTaskPop extends StatelessWidget {
  const AddTaskPop({super.key});

  @override
  Widget build(BuildContext context) {
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
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal[400],
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'Add',
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
