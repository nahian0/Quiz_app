import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Question extends StatelessWidget {

  final String questiontext;
  Question(this.questiontext);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Text(questiontext);
  }
}