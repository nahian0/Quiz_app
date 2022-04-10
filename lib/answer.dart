// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Selected_answer;
  final answertext;

  Answer(this.Selected_answer, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text(answertext),
          color: Colors.blue,
          onPressed: Selected_answer,
        ));
  }
}
