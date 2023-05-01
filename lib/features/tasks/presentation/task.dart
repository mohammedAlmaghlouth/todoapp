import 'package:flutter/material.dart';
import 'package:todoapp/features/tasks/presentation/check_done.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('go shopping'),
      trailing: CheckDone(),
    );
  }
}
