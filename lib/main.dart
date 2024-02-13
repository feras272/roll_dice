import 'package:flutter/material.dart';
import 'package:roll_dice/frontend/widgets/gradient_background.dart';

void main() {
  runApp(const RollDice());
}

class RollDice extends StatelessWidget {
  const RollDice({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: GradientBackground(),
        ),
      ),
    );
  }
}