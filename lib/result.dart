import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total_score;
  final restart_app;
  Result(this.total_score, this.restart_app);

  var result_text = 'you did it';
  String get resultphrase {
    if (total_score <= 8) {
      result_text = 'you are awesome';
    } else if (total_score <= 10) {
      result_text = 'good';
    } else if (total_score <= 15) {
      result_text = 'you are strange';
    } else {
      result_text = 'you are so so bad';
    }
    return result_text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultphrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restart_app,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
