// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Task {
  final String name;
  final String comment;
  final TimeOfDay distime;

  bool isDone;

  Task({
    required this.name,
    required this.comment,
    required this.distime,
    this.isDone = false,
  });

  void doneChanged() {
    isDone = !isDone;
  }
}
