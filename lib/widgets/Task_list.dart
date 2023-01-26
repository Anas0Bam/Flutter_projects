// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, camel_case_types, use_key_in_widget_constructors

import 'package:duaa/models/Task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Tasktitle.dart';

class Task_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return Tasktitle(
                isChecked: taskData.tasks[index].isDone,
                tasktitle: taskData.tasks[index].name,
                taskComment: taskData.tasks[index].comment,
                timedis: taskData.tasks[index].distime,
                checkboxChanged: (newvalue) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                ListtileDelete: () {
                  taskData.deleteTask(taskData.tasks[index]);
                });
          },
        );
      },
    );
  }
}
