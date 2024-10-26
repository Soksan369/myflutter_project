import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Excercise 2',
      home: Container(
        color: 	Colors.blue[300],
        padding:const EdgeInsets.all(50),
        margin: const EdgeInsets.all(40),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(10),
          ),
          child:const Center(
            child: Text("CADT STUDENTS",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
  ),
  );
}