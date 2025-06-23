import 'package:flutter/material.dart';
import 'package:sec_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 195, 10, 10),const Color.fromARGB(255, 192, 192, 67)),
      ),
    ),
  );
}

