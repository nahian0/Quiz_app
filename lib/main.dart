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
      'answers': ['red', 'blue', 'green', 'black']
    },
    {
      'question': 'what is your favorite animal',
      'answers': ['cat', 'tiger', 'cow', 'dog']
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
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
              : Text("You did it")),
    );
  }
}
