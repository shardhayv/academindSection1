import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentNum = 2;

  void rollDice() {
    setState(() {
      currentNum = randomizer.nextInt(6) + 1;
      currentNum;
    });

    // print("rolling dice");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentNum.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              padding: const EdgeInsets.all(10)),
          onPressed: rollDice,
          child: const Text(
            'Roll',
            style: TextStyle(color: Colors.green, fontSize: 25),
          ),
        ),
      ],
    );
  }
}
