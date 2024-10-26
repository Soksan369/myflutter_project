import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({this.text="hello", this.startColor,this.endColor});
  
  final String text;
  final Color? startColor;
  final Color? endColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [startColor!,endColor!],
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
    );
  }
}
void main() {
  runApp(
    MaterialApp(
      title: "Exercise 4",
      home: Container(
        padding: const EdgeInsets.all(50.0),
      	child: Column(
            children: [
              CustomCard(text:"OOP", startColor: Colors.blue[100],endColor: Colors.blue[300]),
              CustomCard(text:"DART", startColor: Colors.blue[300],endColor: Colors.blue[600]),
              CustomCard(text:"FLUTTER", startColor: Colors.blue[600],endColor: Colors.blue[900]),
            ],
          ),
      ),
    ));
}