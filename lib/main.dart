// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp( MyAppstatefull());
}
class MyAppstatefull extends StatefulWidget
{
  const MyAppstatefull({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyApp();
  }
}

class MyApp extends State<MyAppstatefull> {
 
 // ignore: prefer_final_fields
 var _questions=[
   "what is your name",
   "what is your age"
 ];
 var _questionIndex=0;
  void answerQuestion()
  {
    setState(() {
      _questionIndex+=1;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Question(_questions[_questionIndex]),
            RaisedButton(
              onPressed: answerQuestion,
              child: const Text("button 1"),
            ),
              RaisedButton(
              onPressed: answerQuestion,
              // ignore: unnecessary_const
              child: const Text("button2"),
            ),
             RaisedButton(
              onPressed: answerQuestion,
              child: const Text("button3"),
            ),
          ],
        ),
      ),
    );
  }
}
