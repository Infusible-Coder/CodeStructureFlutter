import 'dart:convert';

import 'package:code_structure/models/toDoModel.dart';
import 'package:code_structure/utils/constants.dart';
import 'package:http/http.dart' as http;

class ToDoServices {
  ///Get To Do Data
  Future<ToDoListModel> getToDoData() async {
    return Future.delayed(Duration(seconds: 2), () async {
      return await http.get(Uri.parse(EndPoints.toDoEndPoint)).then((response) {
        return ToDoListModel.fromJson(json.decode(response.body));
      });
    });
  }
}
