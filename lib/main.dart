import 'package:flutter/material.dart';

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
    return MyAppState();
  }
}


class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() => {
    setState(()=> {
      questionIndex = questionIndex + 1
    }),
    print('Answered question')
  };

  @override
  Widget build(BuildContext context) {
    var questions = [
      'long_dark',
      'souls'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(questions[questionIndex]),
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text(questions[questionIndex]),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
