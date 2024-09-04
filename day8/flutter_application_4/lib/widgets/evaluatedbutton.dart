import 'package:flutter/material.dart';


  @override
  Widget myEvaluateButton (VoidCallback onPressed,  String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        backgroundColor: Colors.orange,
        minimumSize: const Size(150, 50),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }

