import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result(this.score, this.resetQuiz);

  String get resultText {
    var text = 'Your score is below 5';

    if (score > 5 && score < 11) {
      text = 'Your score is more then 5';
    } else if (score > 10) {
      text = 'Your score is more then 10';
    }

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultText + ' and it is ' + score.toString(),
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetQuiz,
          textColor: Colors.blue,
          child: Text('Reset quiz'),
        )
      ],
    ));
  }
}
