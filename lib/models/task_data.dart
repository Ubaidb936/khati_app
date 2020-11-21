import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:khati_app/models/task.dart';

class TaskData extends ChangeNotifier{

  var _tasks = [
    Task(name: 'Running'),
    Task(name: 'Cycling'),
    Task(name: 'Coding'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks{

    return UnmodifiableListView(_tasks);

  }

  void addTask(String taskName){

    final task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();

  }

  void updateTask( Task task){
    task.toggle();
    notifyListeners();
  }
  void deleteTask( Task task){
    _tasks.remove(task);
    notifyListeners();
  }


}