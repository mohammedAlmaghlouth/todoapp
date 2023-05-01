// ignore_for_file: public_member_api_docs, sort_constructors_first
class Task {
  Task({
    required this.taskTitle,
    this.isChecked = false,
  });

  final String taskTitle;
  bool? isChecked;

  void changeCheck() {
    isChecked = !isChecked!;
  }
}
