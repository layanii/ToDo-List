import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskProvider extends ChangeNotifier {
  List<TaskLists> _tasks = [];

  void addTask(String newTitle) {
    _tasks.add(TaskLists(taskName: newTitle));
    notifyListeners();
  }

  void updateTask(TaskLists task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(TaskLists task) {
    _tasks.remove(task);
    notifyListeners();
  }

  set tasks(List<TaskLists> t) {
    _tasks = t;
    notifyListeners();
  }

  List<TaskLists> get tasks => _tasks;
}
