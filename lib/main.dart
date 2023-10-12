import 'package:flutter/material.dart';
import 'package:to_do_app/home/Home.dart';
void main(){
  runApp(const Base());
}
class Base extends StatelessWidget {
  const Base({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'To-Do List',
      home: Home(),
    );
  }
}