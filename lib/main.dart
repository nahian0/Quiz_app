// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyAppstatefull());
}

class MyAppstatefull extends StatefulWidget {
  const MyAppstatefull({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyApp();
  }
}

class MyApp extends State<MyAppstatefull> {
  // ignore: prefer_final_fields
  var _questions = [
    {
      'question': 'what is your favorite color',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'blue', 'score': 3},
        {'text': 'green', 'score': 1}
      ]
    },
    {
      'question': 'what is your favorite animal',
      'answers': [
        {'text': 'snake', 'score': 10},
        {'text': 'dog', 'score': 5},
        {'text': 'cat', 'score': 3},
        {'text': 'cow', 'score': 1}
      ]
    }
  ];
  var _questionIndex = 0;
  int total_score = 0;
  void _reset_quiz() {
    setState(() {
      total_score = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    total_score += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("Quizapp"),
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(total_score, _reset_quiz)),
    );
  }
}
