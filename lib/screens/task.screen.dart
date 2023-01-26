// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:duaa/fullscreen/athkar.dart';
import 'package:duaa/fullscreen/dua.dart';
import 'package:duaa/fullscreen/time.dart';

import 'package:duaa/models/Task_data.dart';
import 'package:duaa/my_flutter_app_icons.dart';
import 'package:duaa/widgets/Task_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:provider/provider.dart';

import 'for_adding_task_screen.dart';

class Tasksscreen extends StatefulWidget {
  @override
  State<Tasksscreen> createState() => _TasksscreenState();
}

class _TasksscreenState extends State<Tasksscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      /* Background image*/ decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/back1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(top: 50, left: 10, bottom: 30),
          color: Colors.transparent,
          child: Column(
            children: [
              /*Date/to do */ Row(
                children: [
                  newtimedesign(),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(
                            Radius.circular(90),
                          )),
                      child: Center(
                        child: Text(
                          '${Provider.of<TaskData>(context).tasks.length} To do',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              /*time + today*/ Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /*time*/ timeday(context),
                  /*today text*/ Container(
                    height: 35,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Today',
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              /*view box*/ Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: Task_list(),
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton.extended(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTaskScreen(),
                      ),
                    ),
                  );
                },
                backgroundColor: Colors.orange,
                label: Text(
                  'Task',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                icon: Icon(
                  Icons.add,
                  semanticLabel: 'Text',
                  size: 30,
                  color: Colors.white,
                ),
              ),
              SpeedDial(
                animatedIcon: AnimatedIcons.menu_close,
                backgroundColor: Colors.orange,
                overlayColor: Colors.black,
                overlayOpacity: 0.3,
                children: [
                  SpeedDialChild(
                      child: Icon(MyFlutterApp.task),
                      backgroundColor: Colors.yellow[300],
                      label: 'Tasks'), //first page
                  SpeedDialChild(
                    child: Icon(MyFlutterApp.athkar_1),
                    backgroundColor: Colors.blue[200],
                    label: 'Duaa',
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Duaa(),
                      ),
                    ),
                  ), //duaa

                  SpeedDialChild(
                    child: Icon(MyFlutterApp.day_and_night_1),
                    backgroundColor: Colors.greenAccent[300],
                    label: 'Athkar',
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Athkar())),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
