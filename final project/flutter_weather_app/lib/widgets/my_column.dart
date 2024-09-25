import 'package:flutter/material.dart';
import 'package:flutter_weather_app/widgets/my_sizebox.dart';

Widget myColumn(String text1, String text2) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text1,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      mySizedBox(height: 5),
      Text(
        text2,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
      ),
    ],
  );
}
