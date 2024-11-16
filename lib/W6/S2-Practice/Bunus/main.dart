// main.dart
import 'package:flutter/material.dart';
import 'package:myflutter_project/W6/S2-Practice/EXERCISE-3/screen/temperature.dart';
import 'package:myflutter_project/W6/S2-Practice/EXERCISE-3/screen/welcome.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  _TemperatureAppState createState() => _TemperatureAppState();
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool _showWelcomeScreen = true;

  void _toggleScreen() {
    setState(() {
      _showWelcomeScreen = !_showWelcomeScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: _showWelcomeScreen ? Welcome(onStart: _toggleScreen) : Temperature(),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}