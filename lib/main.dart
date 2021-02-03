import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    const questions = [
      {
        'questionText': 'What\'s is you fav color?',
        'questionAnswers': ['green', 'blue', 'red', 'yellow']
      },
      {
        'questionText': 'What\'s is you fav color2?',
        'questionAnswers': ['green', 'blue2', 'red', 'yellow']
      },
      {
        'questionText': 'What\'s is you fav color3?',
        'questionAnswers': ['green', 'blue3', 'red', 'yellow']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ps5'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['questionAnswers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
