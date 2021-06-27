import 'package:code_structure/models/toDoModel.dart';
import 'package:flutter/material.dart';

class ToDoWidget extends StatelessWidget {
   ToDoListModel? toDoListModel;
   ToDoWidget({this.toDoListModel}) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.edit),
      title: Text(toDoListModel!.title!),
      subtitle: Text(toDoListModel!.completed! ? "Completed" : "Pending"),
    );
  }
}
