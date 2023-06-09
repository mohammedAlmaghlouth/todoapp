import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/features/tasks/data/task_data.dart';
import 'package:todoapp/features/tasks/presentation/add_task_pop.dart';
import 'package:todoapp/features/tasks/presentation/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  // List<Task> tasksObjects = [
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
                  child: const AddTaskPop(),
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
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} Tasks',
                  style: const TextStyle(
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
                  child: const TasksList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
