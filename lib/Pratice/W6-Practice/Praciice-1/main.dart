import'package:flutter/material.dart';
List<int> number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Number List'),
        ),
        body: Column(
          children: [
           const Text("Start"),
            for (var i = 0;i < number.length; i++) Text('Item ${number[i]}'), 
           const Text("End"), 
          ],
        )
      ),
    ),
  );
}