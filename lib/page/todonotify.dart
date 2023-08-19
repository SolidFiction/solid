import 'package:flutter/cupertino.dart';

class Todo{
  int id = 1;
  String msg = "";
  TextEditingController todocontroller = new TextEditingController();
  Todo({required this.id,required this.msg, required this.todocontroller});
}
TextEditingController naming = new TextEditingController();
List<Todo> todolist = [
  Todo(id: 0, msg: "lilo", todocontroller: naming)
];