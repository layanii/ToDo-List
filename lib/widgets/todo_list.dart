// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/providers/task_provider.dart';
import 'package:todolist/widgets/todo_tile.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // final providerTasks = Provider.of<TaskProvider>(context);
    return Consumer<TaskProvider>(
      builder: (context, value, child) => ListView.builder(
            itemCount: value.tasks.length,
            itemBuilder: (context, index) {
              return (TodoTile(
                taskTitle: value.tasks[index].taskName,
                isChacked: value.tasks[index].isDone,
                checkBoxChanged: (newValue) {
                  value.updateTask(value.tasks[index]);
                },
                taskDelete: () {
                  value.deleteTask(value.tasks[index]);
                },
              ));
            }),
    );
  }
}
