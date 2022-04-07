// ignore_for_file: unused_import

import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Selected_answer;

  Answer(this.Selected_answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      child: RaisedButton(
      child: Text("Answers1"),
      color: Colors.blue,
      onPressed: Selected_answer,
      )

      
    );
  }
}