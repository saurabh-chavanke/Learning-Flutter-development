import 'package:flutter/material.dart';
import 'package:sec_app/text_style.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1,this.color2,{super.key});

  final color1;
  final color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1,color2],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child:Center(
        child:Text(
      "Saurabh",
      style: TextStyle(
        color: color1,
        fontSize: 28,
      ),
    ),
      ),
    );
  }
}
