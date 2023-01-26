// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

import 'Task_display.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];
  void addTask(
    String newTaskTitle,
    String newcommenttitle,
    TimeOfDay time,
  ) {
    tasks.add(
      Task(
        name: newTaskTitle,
        comment: newcommenttitle,
        distime: time,
      ),
    );
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChanged();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
