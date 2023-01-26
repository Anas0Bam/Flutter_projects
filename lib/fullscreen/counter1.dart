// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:duaa/fullscreen/athkar.dart';
import 'package:duaa/fullscreen/dua.dart';
import 'package:duaa/fullscreen/widget.dart';
import 'package:duaa/my_flutter_app_icons.dart';

import 'package:duaa/screens/task.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'time.dart';

// ignore: camel_case_types
class counter1 extends StatefulWidget {
  const counter1({Key? key}) : super(key: key);

  @override
  State<counter1> createState() => _counter1State();
}

// ignore: camel_case_types
class _counter1State extends State<counter1> {
  int count = 0;
  void _counter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/back1.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'سبحة',
              style: TextStyle(
                  fontFamily: 'Baloo Bhaijaan 2',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.transparent,
          persistentFooterButtons: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: null,
                  child: Icon(
                    MyFlutterApp.mosque,
                  ),
                  backgroundColor: Colors.orange,
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
                      label: 'Tasks',
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Tasksscreen())),
                    ), //first page
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
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Athkar(),
                            ))),
                  ],
                ),
              ],
            ),
          ],
          body: Stack(
            children: [
              Incremneter(),
              Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: _counter,
                    child: Container(
                      height: 280,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          opacity: 220,
                          image: AssetImage(
                            'images/backc.png',
                          ),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        '$count',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      )),
                    ),
                  )),
            ],
          )),
    );
  }
}
