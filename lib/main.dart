import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Text('Hello!'),);
//   }
// }

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() => {
        setState(() => {_questionIndex = _questionIndex + 1}),
        print('Answered question')
      };

  @override
  Widget build(BuildContext context) {
    var questions = ['long_dark', 'souls'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(questions[_questionIndex]),
        ),
        body: Column(
          children: [
            Question('The question!'),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text(questions[_questionIndex]),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
