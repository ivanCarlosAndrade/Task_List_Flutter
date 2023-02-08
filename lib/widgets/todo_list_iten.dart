import 'package:flutter/material.dart';

class TodoListIten extends StatelessWidget {
  const TodoListIten({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), color: Colors.red),
      padding: EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "20/12/2022",
          style: TextStyle(fontSize: 12),
        ),
        Text(
          "Tarefa",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        )
      ]),
    );
  }
}
