import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
          color: const Color.fromARGB(156, 239, 222, 221),
        ),
        const SizedBox(height: 40),
        const Text(
          "Learn Flutter The Fun Way !",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
          onPressed:startQuiz,
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black, foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            "Start Quiz",
          ),
        )
      ]),
    );
  }
}
