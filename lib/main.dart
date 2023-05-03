import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/features/tasks/data/task_data.dart';
import 'package:todoapp/features/tasks/presentation/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
