import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.question});

  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          question,
          style: const TextStyle(
              color: Colors.brown, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
