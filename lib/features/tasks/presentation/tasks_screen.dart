import 'package:flutter/material.dart';
import 'package:todoapp/features/tasks/model/task.dart';
import 'package:todoapp/features/tasks/presentation/add_task_pop.dart';
import 'package:todoapp/features/tasks/presentation/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasksObjects = [
    Task(taskTitle: 'Go Shopping'),
    Task(taskTitle: 'Rent Car'),
    Task(taskTitle: 'Study 326 Quiz'),
    Task(taskTitle: 'End Ammar tutorial'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: AddTaskPop(
                    addTaskFunction: (newTaskTitle) {
                      setState(
                        () {
                          tasksObjects.add(
                            Task(taskTitle: newTaskTitle!),
                          );
                        },
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: Colors.indigo,
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Container(
        color: Colors.teal,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25, top: 25, bottom: 45, right: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.playlist_add_check,
                      color: Colors.white,
                      size: 45,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'ToDoList',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '4 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TasksList(tasks: tasksObjects),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
