import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s is you fav color?',
      'answers': [
        {'text': 'green', 'score': 2},
        {'text': 'blue', 'score': 4},
        {'text': 'red', 'score': 6},
        {'text': 'yellow', 'score': 8},
      ]
    },
    {
      'questionText': 'What\'s is you fav color2?',
      'answers': [
        {'text': 'green', 'score': 2},
        {'text': 'blue', 'score': 4},
        {'text': 'red', 'score': 6},
        {'text': 'yellow', 'score': 8},
      ]
    },
    {
      'questionText': 'What\'s is you fav color3?',
      'answers': [
        {'text': 'green', 'score': 2},
        {'text': 'blue', 'score': 4},
        {'text': 'red', 'score': 6},
        {'text': 'yellow', 'score': 8}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() => {_questionIndex = _questionIndex + 1});
    }
  }

  void _resetQuiz() {
    setState(() => {_questionIndex = 0, _totalScore = 0});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ps5'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
