import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'task_moudle.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(theTask: 'Provider Steate Manegmamnet'),
    Task(theTask: 'Level Up'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(theTask: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void Updatetask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deletTask(Task task) {
    tasks.remove(task);

    notifyListeners();
  }
}
