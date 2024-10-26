import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Excercise 1',
      home: Scaffold(
        body: Center(
          child: Text('Hello My name is Soksan!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
     ),
  );
}