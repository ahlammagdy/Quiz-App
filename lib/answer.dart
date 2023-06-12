import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(
      {super.key, required this.questionAnswer, required this.answerFunction});

  final String questionAnswer;
  final Function answerFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: const ButtonStyle(
              //maximumSize: MaterialStatePropertyAll(),
              backgroundColor: MaterialStatePropertyAll(Colors.amber)),
          onPressed: () => answerFunction(),
          child: Text(questionAnswer)),
    );
  }
}
