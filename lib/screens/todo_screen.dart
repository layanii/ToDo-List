import 'package:flutter/material.dart';
import '../providers/task_provider.dart';
import '../widgets/todo_list.dart';
import 'add_todo_screen.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatefulWidget {
   const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
  showModalBottomSheet<void>(
    isScrollControlled: true,
    context: context,
    builder:(context)=>const AddTodoScreen());},
        backgroundColor: const Color(0xFF00ADFF),
        child: const Icon(Icons.add),
      ),
      backgroundColor: const Color(0xFF00ADFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        topPart(),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20) ,
               topRight: Radius.circular(20)),
            ),
          child:  const TodoList(),
          ),
        )


      
      ],),
    );
  }

  Container topPart() {
    return Container(
        padding: const EdgeInsets.only( top: 60 , left: 20 , right: 20, bottom: 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            listIcon(),
            const SizedBox(height: 10,),
        const Text("To-Do List" , style: TextStyle(
        color: Colors.white , fontWeight: FontWeight.bold,fontSize: 45),),
         Text("${Provider.of<TaskProvider>(context).tasks.length} task" ,
          style: const TextStyle(color: Colors.white , fontSize: 20),),
        const SizedBox(height: 20,),
          ],
        ),
      );
  }

  MaterialButton listIcon() {
    return MaterialButton(onPressed:() {}, color: Colors.white,
textColor: Colors.blue,
padding: const EdgeInsets.all(15),
shape: const CircleBorder(),
child: const Icon(
  Icons.list,
  size:35,
),  );
  }
}

