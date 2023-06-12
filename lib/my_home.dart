// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:quize_app/answer.dart';
import 'package:quize_app/question.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var totalScore = 0;
  var index = 0;
  int num0 = 0;
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  List question = [
    {
      "questionText": "what is your favorite color",
      "answer": [
        {'text': 'red', 'score': 10},
        {'text': 'green', 'score': 20},
        {'text': 'blue', 'score': 30},
      ]
    },
    {
      "questionText": "what is your favorite animal",
      "answer": [
        {'text': 'rabbit', 'score': 10},
        {'text': 'dog', 'score': 20},
        {'text': 'cat', 'score': 30},
      ]
    },
    {
      "questionText": "what is your favorite meal",
      "answer": [
        {'text': 'rice', 'score': 10},
        {'text': 'espaketty', 'score': 20},
        {'text': 'soup', 'score': 30}
      ]
    },
    {
      "questionText": "what is your favorite meal2",
      "answer": [
        {'text': 'rice2', 'score': 10},
        {'text': 'espaketty2', 'score': 20},
        {'text': 'soup2', 'score': 30}
      ]
    },
  ];

  answerFunction(int score) {
    if (index == 0) {
      num0 = score;
    } else if (index == 1) {
      num1 = score;
    } else if (index == 2) {
      num2 = score;
    } else if (index == 3) {
      num3 = score;
    }
    print("answeer choosen");
    print("Answer chosen Score: $score");
    // if (score != null) {
    //   totalScore += score;
    //   print("Total Score: $totalScore");
    // }
    totalScore += score;
    setState(() {
      index += 1;
    });
    print("index = $index");
    print("num0 = $num0");
    print("num1 = $num1");
    print("num2 = $num2");
    print("num3 = $num3");
    print("totalScore = $totalScore");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: index < question.length
              ? Column(
                  children: [
                    Question(question: question[index]["questionText"]),
                    ...(question[index]["answer"] as List).map((answer) {
                      return Answer(
                          questionAnswer: answer['text'],
                          answerFunction: () =>
                              answerFunction(answer['score']));
                    }).toList(),
                  ],
                )
              : Center(
                  child: Column(
                    children: [
                      const Text(
                        "the Quiz is finished",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "the Quiz score is",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$totalScore",
                        style: const TextStyle(
                            color: Colors.brown,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          if (index == 1) {
            totalScore -= num0;
          } else if (index == 2) {
            totalScore -= num1;
          } else if (index == 3) {
            totalScore -= num2;
          } else if (index == 4) {
            totalScore -= num3;
          }
          print("index = $index");
          print("num0 = $num0");
          print("num1 = $num1");
          print("num2 = $num2");
          print("num3 = $num3");
          print("total Score= $totalScore");
          if (index > 0) {
            setState(() {
              index--;
            });
          }
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
