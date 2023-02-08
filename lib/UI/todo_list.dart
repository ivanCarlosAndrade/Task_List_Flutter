import 'package:flutter/material.dart';

import '../widgets/todo_list_iten.dart';

class TodoList extends StatefulWidget {
  TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> task = [];
  
  final TextEditingController TextController = TextEditingController();

  final TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        task.add(text);
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
                  for (String todo in task)
                    TodoListIten(),
                   
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: Text("Voce tem 0 tarefas")),
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
    );
    ;
  }
}
