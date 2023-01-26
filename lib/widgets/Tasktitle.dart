// ignore_for_file: prefer_const_constructors, camel_case_types, non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Tasktitle extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final String taskComment;
  final TimeOfDay timedis;

  final void Function(bool?) checkboxChanged;
  final void Function() ListtileDelete;

  Tasktitle(
      {required this.isChecked,
      required this.taskComment,
      required this.tasktitle,
      required this.checkboxChanged,
      required this.ListtileDelete,
      required this.timedis});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: ListtileDelete,
      title: Text(
        tasktitle,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      subtitle: Text(taskComment,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      leading: Text(
        timedis.format(context).toString(),
        style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.orange[200],
        value: isChecked,
        onChanged: checkboxChanged,
      ),
    );
  }
}
