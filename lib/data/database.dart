import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  
  // Reference to our box
  final _myBox = Hive.box('myBox');

  // Run this method if this is the first time opening this app
  void createInitialData() {
    toDoList = [
      ['Make Sandwich', false],
      ['Do Exercise', false],
    ];
  }

  // Load data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
