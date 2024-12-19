import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({
    super.key,
  });

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  @override
  Widget build(BuildContext context) {
    String? newTask;
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Add Task',
                style: TextStyle(fontSize: 30, color: Color(0xFF40C4FF)),
              ),
              TextField(
                onChanged: (value) {
                  newTask = value;
                },
                autofocus: true,
              ),
              const SizedBox(height: 15),
              Material(
                color: const Color(0xFF40C4FF),
                child: InkWell(
                  onTap: () {
                    if (newTask != null) {
                      Provider.of<TaskProvider>(context , listen: false).addTask(newTask!);
                      Navigator.pop(context);
                    }
                  },
                  child: Container(
                    width: 400,
                    height: 40,
                    alignment: Alignment.center,
                    child: const Text(
                      "Add",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
