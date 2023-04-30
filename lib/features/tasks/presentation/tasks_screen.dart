import 'package:flutter/material.dart';
import 'package:todoapp/features/tasks/presentation/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo,
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Container(
        color: Colors.teal,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25, top: 25, bottom: 30, right: 25),
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
                child: const TasksList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
