import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() x;

  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            textStyle: const TextStyle(color: Colors.white)),
        onPressed: x,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 25, color: b),
        ),
      ),
    );
  }
}
