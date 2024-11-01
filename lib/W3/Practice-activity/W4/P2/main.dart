import 'package:flutter/material.dart';
import 'dart:math';

const String diceImage2 = 'images/dice-2.png';
const String diceImage3 = 'images/dice-3.png';
const String diceImage4 = 'images/dice-4.png';
const String diceImage5 = 'images/dice-5.png';

String activeDiceImage = diceImage2;

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
     //  Display random dice image !
    setState(() {
      final random = Random().nextInt(4) + 2;
      switch (random) {
        case 2:
          activeDiceImage = diceImage2;
          break;
        case 3:
          activeDiceImage = diceImage3;
          break;
        case 4:
          activeDiceImage = diceImage4;
          break;
        case 5:
          activeDiceImage = diceImage5;
          break;
      }
  });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

void main() => runApp(const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(child: DiceRoller()),
      ),
    ));