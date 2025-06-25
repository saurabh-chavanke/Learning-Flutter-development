import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:adv_basics/models/quiz_questions.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuetionsScreenState();
  }
}

class _QuetionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion() {
    // currentQuestionIndex = currentQuestionIndex + 1;
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...currentQuestion.getShuffledAnswer().map((item) {
              return AnswerButton(
                  answerText: item,
                  onTap: () {
                    answerQuestion();
                  });
            })
            // AnswerButton(answerText: currentQuestion.answers[0],onTap:() { }),
            // AnswerButton(answerText: currentQuestion.answers[1],onTap:() { }),
            // AnswerButton(answerText: currentQuestion.answers[2],onTap:() { }),
            // AnswerButton(answerText: currentQuestion.answers[3],onTap:() { }),
          ],
        ),
      ),
    );
  }
}
