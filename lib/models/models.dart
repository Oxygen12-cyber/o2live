import 'package:flutter/material.dart';

final List<Color> colors = [
  Colors.pink,
  Colors.yellow,
  Colors.deepPurple,
  Colors.blue,
];

Widget dateContainer(String text) => Container(
  color: Colors.green,
  width: 40,
  height: 40,
  alignment: Alignment.center,
  child: Text(
    text,
    style: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  ),
);

final List<String> mydata = [
  'Nothing',
  'waittin',
  'wow not working',
  'same thing?',
];

final List<Map<String, dynamic>> maxData = [];
