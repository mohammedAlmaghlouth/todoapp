import 'package:flutter/material.dart';

class CheckDone extends StatefulWidget {
  const CheckDone({super.key});

  @override
  State<CheckDone> createState() => _CheckDoneState();
}

class _CheckDoneState extends State<CheckDone> {
  bool? isDone = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value: isDone,
      onChanged: (newValue) {
        setState(
          () {
            isDone = newValue;
          },
        );
      },
    );
  }
}
