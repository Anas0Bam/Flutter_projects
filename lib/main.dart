import 'package:duaa/screens/task.screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/Task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: Tasksscreen(),
      ),
    );
  }
}
