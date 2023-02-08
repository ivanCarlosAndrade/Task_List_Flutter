import 'package:flutter/material.dart';
import 'package:tarefas/Models/todo.dart';

import '../widgets/todo_list_iten.dart';

class TodoList extends StatefulWidget {
  TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> task = [];

  final TextEditingController TextController = TextEditingController();

  final TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 400),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: TextField(
                      controller: TextController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione uma tarefa',
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        String text = TextController.text;

                        setState(() {
                          Todo newTodo =
                              Todo(title: text, datetime: DateTime.now());
                          task.add(newTodo);
                        });
                        TextController.clear();
                      },
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          padding: EdgeInsets.all(14),
                          fixedSize: Size(50, 50)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for (Todo todo in task)
                      TodoListIten(
                        todo:todo
                      )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(child: Text("Voce tem ${task.length} tarefas")),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Limpar tudo"),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
    ;
  }
}
