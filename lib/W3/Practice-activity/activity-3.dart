import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(this.text,{required this.start,required this.end});
  final String text;
  final Color start;
  final Color end;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.circular(35),
                  gradient: LinearGradient(
                    colors: [start,end],
                  ),
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    ),
                    ),
                   ),
    );
  }
}
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