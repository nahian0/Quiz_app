import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  final String questiontext;
  Question(this.questiontext);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: Text(
        questiontext,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
