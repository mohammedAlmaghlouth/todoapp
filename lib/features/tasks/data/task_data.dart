import 'package:flutter/material.dart';
import 'package:todoapp/features/tasks/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskTitle: 'Go Shopping'),
    Task(taskTitle: 'Rent Car'),
    Task(taskTitle: 'Study Quiz 4'),
    Task(taskTitle: 'Call Appointment'),
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

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
