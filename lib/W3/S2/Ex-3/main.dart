import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Exercise 3',
      home: Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(30),
            ),
            child:const  Center(
              child: Text("OOP",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Center(
              child: Text("DART",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[Color(0xff4BA5F0), Color(0xff2A2580)]),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Center(
              child: Text("FLUTTER",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
                  
                ),
              ),
            ),
          ),
        ],
      )
      ),
       
    )
  );
}