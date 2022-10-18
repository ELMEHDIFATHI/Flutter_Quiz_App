import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';
import 'question.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;
  int questionIndex = 0;
  int totalscore = 0;
  final List<Map<String, Object>> question = [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 0},
        {'text': 'Yellow', 'score': 10},
      ]
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': 50},
        {'text': 'Elephant', 'score': 10},
        {'text': 'Lion', 'score': 20},
      ]
    },
    {
      'questionText': 'what\'s your favorite Name?',
      'answers': [
        {'text': 'Hassan', 'score': 0},
        {'text': 'Mehdi', 'score': 20},
        {'text': 'nadia', 'score': 10},
        {'text': 'fatim', 'score': 10},
      ]
    },
  ];

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
  }

  void answerQuestion(int score) {
    totalscore += score;
    setState(() {
      questionIndex += 1;
    });
    print("Answer Question");
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          actions: [
            Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    if (isSwitched == true) {
                      b = Colors.white;
                      w = Colors.black;
                    }
                    if (isSwitched == false) {
                      b = Colors.black;
                      w = Colors.white;
                    }
                  });
                })
          ],
        ),
        body: Container(
            color: w,
            margin: const EdgeInsets.all(10.0),
            child: questionIndex < question.length
                ? Quiz(question, questionIndex, answerQuestion)
                : Result(resetQuiz, totalscore)),
      ),
    );
  }
}
