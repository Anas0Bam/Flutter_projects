// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:duaa/models/Task_data.dart';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TimeOfDay? time = const TimeOfDay(hour: 00, minute: 00);

  @override
  Widget build(BuildContext context) {
    String? Newtasktitle;
    String newcommenttitle = '';
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Text(
            'Add the details',
            style: TextStyle(
                color: Colors.orange[200],
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () //_showTimePicker,
                async {
              TimeOfDay? newTime =
                  await showTimePicker(context: context, initialTime: time!);
              if (newTime == null) return;

              setState(() {
                time = newTime;
              });
            },
            autofocus: true,
            child: Text('Select your time'),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            /* Name of the task*/

            textAlign: TextAlign.center,
            onChanged: (newText) {
              Newtasktitle = newText;
            },
            decoration: InputDecoration(
              hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.orange[200]),
              hintText: 'Name of the task',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            textInputAction: TextInputAction.next,
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            /* comment field*/

            textAlign: TextAlign.center,
            onChanged: (newcomment) {
              newcommenttitle = newcomment;
            },
            decoration: InputDecoration(
              hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.orange[200]),
              hintText: 'Comment',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            textInputAction: TextInputAction.next,
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(Newtasktitle!, newcommenttitle, time!);
              Navigator.pop(context);
            },
            label: Text('Add'),
            backgroundColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
