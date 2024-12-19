class TaskLists {
  TaskLists({required this.taskName, this.isDone = false});
  late String taskName;
  bool isDone;

  void doneChange() {
    isDone = !isDone;
  }
}
