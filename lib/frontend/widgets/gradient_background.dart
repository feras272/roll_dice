import 'package:flutter/material.dart';
import 'package:roll_dice/frontend/widgets/dice_rolling.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.green,
            Colors.purple,
          ],
        ),
      ),
      child: const Center(
        child: DiceRolling(),
      ),
    );
  }
}
