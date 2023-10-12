import 'package:flutter/material.dart';
import 'package:to_do_app/todo/to_do_item.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.tdi});
  ToDoItem tdi;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                right: 10,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(
                    width: 2,
                    color: Colors.green,
                  )),
              child: Center(child: Text(tdi.id))),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(tdi.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  tdi.description,
                  style: const TextStyle(color: Colors.blueGrey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
