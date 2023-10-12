import 'package:flutter/material.dart';
import 'package:to_do_app/home/Items/Item.dart';
import 'package:to_do_app/todo/to_do_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    ToDoItem tdi = ToDoItem(id: '1', title: 'Title of the To-Do 1', description: 'Description of the to-do list');
    ToDoItem tdi1 = ToDoItem(id: '2', title: 'Title of the To-Do 1', description: 'Description of the to-do list');
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do'),
      ),
      body: Center(
        child: ListView(children: [
          Item(tdi: tdi),
          Item(tdi: tdi1),
        ]),
      ),
    );
  }
}
