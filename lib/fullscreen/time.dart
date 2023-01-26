import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateTime dateTime = DateTime.now();

Text newtimedesign() => Text(
      DateFormat('MMM d, yyyy').format(dateTime),
      style: const TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    );

// ignore: non_constant_identifier_names
TimeOfDay Time = TimeOfDay.now();

Text timeday(BuildContext context) => Text(
      Time.format(context).toString(),
      style: const TextStyle(color: Colors.white, fontSize: 30),
    );
