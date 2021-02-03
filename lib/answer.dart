import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPress;
  final String text;

  Answer(this.onPress, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: onPress,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}
