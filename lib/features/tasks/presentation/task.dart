import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('go shopping'),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}
