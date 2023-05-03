import 'package:flutter/material.dart';
import 'package:todoapp/features/tasks/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskTitle: 'Go Shopping'),
    Task(taskTitle: 'Rent Car'),
    Task(taskTitle: 'Study 326 Quiz'),
    Task(taskTitle: 'End Ammar tutorial'),
  ];

  void addTask(String) {
    tasks.add(
      Task(taskTitle: String),
    );
    notifyListeners();
  }

  void changeBool(Task task) {
    task.changeCheck();
    notifyListeners();
  }
}
