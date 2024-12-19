import 'package:flutter/material.dart';

bool isChacked = false;

class TodoTile extends StatelessWidget {
  final bool isChacked;
  final String taskTitle;
  final void Function(bool?) checkBoxChanged;
  final VoidCallback taskDelete;
  const TodoTile(
      {super.key,
      required this.isChacked,
      required this.taskTitle,
      required this.checkBoxChanged,
      required this.taskDelete});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 18,
            decoration: isChacked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChacked,
        onChanged: checkBoxChanged,
      ),
      onLongPress: taskDelete,
    );
  }
}
