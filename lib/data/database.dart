import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference our box
  final _mybox = Hive.box('mybox');

  //run this method when 1st ever open app

  void createInitialData() {
    toDoList = [
      ['Learn new thing', false],
      ['Do Exercise', false],
    ];
  }
  //load data from database

  void loadData() {
    toDoList = _mybox.get('TODOLIST');
  }

  //updata data from database

  void updataDataBase() {
    _mybox.put('TODOLIST', toDoList);
  }
}
