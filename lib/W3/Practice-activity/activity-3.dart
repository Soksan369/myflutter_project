import 'package:flutter/material.dart';
import 'GradientButton.dart';
void main() {
  runApp(
     MaterialApp(
      home: Center(
        child: Column(
          children: [
            GradientButton("Hello 1",start: Colors.blue,end: Colors.green),
            GradientButton("Hello 2",start: Colors.red,end: Colors.yellow),
            GradientButton("Hello 3",start: Colors.purple,end: Colors.orange),
          ],
        )

      ),
    ),
  );
}