import 'package:flutter/material.dart';

import 'dart:developer' as dev;
import 'dart:math';

final Random random = Random();

class DiceRolling extends StatefulWidget {
  const DiceRolling({super.key});

  @override
  State<DiceRolling> createState() => _DiceRollingState();
}

class _DiceRollingState extends State<DiceRolling> {
  int image_number = 1;

  void rollingDice() {
    setState(() {
      image_number = random.nextInt(6) + 1;
    });
    dev.log('Button Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$image_number.png',
          width: 100.0,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          onPressed: () => rollingDice(),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
