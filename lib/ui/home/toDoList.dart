import 'package:code_structure/models/toDoModel.dart';
import 'package:code_structure/services/todoServices.dart';
import 'package:code_structure/widgets/customAppBar.dart';
import 'package:code_structure/widgets/loadingWidget.dart';
import 'package:code_structure/widgets/toDoListWidget.dart';
import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  ToDoServices _doServices = ToDoServices();
  ToDoListModel _toDoModel = ToDoListModel();
  bool isDataLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    _doServices.getToDoData().then((value) {
      _toDoModel = value;
      isDataLoaded = true;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("To Do Data Using API"),
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return !isDataLoaded
        ?LoadingWidget()
        : ToDoWidget(toDoListModel: _toDoModel,);
  }
}
