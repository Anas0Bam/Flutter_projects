// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

Expanded ddd(BuildContext context,
    {required String duaa,
    required String duaaTag,
    required double fonts,
    double? duatesi,
    required Color textc,
    required Color boxc,
    required String pic}) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          scale: 4.9,
          alignment: Alignment(0, -0.9),
          image: AssetImage(
            pic,
          ),
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black,
          primary: Colors.transparent,
          shadowColor: Colors.white10,
          elevation: 1,
          alignment: Alignment(-1, 1),
          minimumSize: Size(0, 150),
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              child: Container(
                padding:
                    EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 00),
                decoration: BoxDecoration(
                  color: boxc,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    opacity: 80,
                    image: AssetImage(
                      'images/pray2.png',
                    ),
                  ),
                ),
                height: 290,
                width: 500,
                child: Center(
                  child: Text(
                    duaa,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontFamily: 'Baloo Bhaijaan 2',
                        color: textc,
                        fontWeight: FontWeight.bold,
                        fontSize: duatesi),
                  ),
                ),
              ),
            ),
          );
        },
        child: Text(
          duaaTag,
          style: TextStyle(
            fontFamily: 'Baloo Bhaijaan 2',
            fontWeight: FontWeight.bold,
            fontSize: fonts,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
