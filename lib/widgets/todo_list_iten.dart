import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tarefas/Models/todo.dart';

class TodoListIten extends StatelessWidget {
  TodoListIten({super.key, required this.todo});
  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2), color: Color.fromARGB(255, 241, 113, 104)),
        padding: EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            DateFormat('dd/MM/yyyy - HH:mm').format(todo.datetime),
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
          Text(
            todo.title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white),
          )
        ]),
      ),
    );
  }
}
