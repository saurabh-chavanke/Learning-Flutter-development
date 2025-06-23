import 'package:flutter/material.dart';

class TextStyles extends StatelessWidget {
  // TextStyles(String text, {super.key}) : outputText = text;
  TextStyles(this.text, {super.key});
  String text;

  // String outputText;

  @override
  Widget build(context) {
    return Text(
      text,
      style:const TextStyle(
        color: Color.fromARGB(255, 165, 217, 69),
        fontSize: 28,
      ),
    );
  }
}
