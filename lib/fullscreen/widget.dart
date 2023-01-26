import 'package:duaa/fullscreen/time.dart';
import 'package:duaa/main.dart';
import 'package:flutter/material.dart';

class Incremneter extends StatelessWidget {
  const Incremneter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            newtimedesign(),
            timeday(context),
          ],
        ),
      ],
    );
  }
}
