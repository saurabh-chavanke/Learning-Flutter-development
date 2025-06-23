import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientConatiner(const Color.fromARGB(255, 197, 113, 107), const Color.fromARGB(255, 64, 103, 230)),
      ),
    ),
  );
}
