// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CheckDone extends StatelessWidget {
  const CheckDone({Key? key, required this.isDone, required this.checkChanged})
      : super(key: key);
  final bool? isDone;
  final Function(bool?) checkChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value: isDone,
      onChanged: checkChanged,
    );
  }
}
