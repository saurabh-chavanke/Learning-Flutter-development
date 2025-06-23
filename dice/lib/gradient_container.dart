import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientConatiner extends StatelessWidget {
  GradientConatiner(this.color1, this.color2, {super.key});

  final color1;
  final color2;

  var startAligment = Alignment.topLeft;
  var endAligment = Alignment.bottomRight;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child:const Center(
        child: DiceRoller(),
      ),
    );
  }
}
