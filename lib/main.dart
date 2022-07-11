import 'package:first_1/question.dart';
import "package:flutter/material.dart";

import './quiz.dart';
import './result.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final list = const [
    {
      "questionText": "What is your favorie color?",
      "answers": [
        {"Text": "Red", "score": 5},
        {"Text": "Blue", "score": 3},
        {"Text": "Green", "score": 4}
      ],
    },
    {
      "questionText": " What is your favorite skill?",
      "answers": [
        {"Text": "Drawing", "score": 3},
        {"Text": "Talking", "score": 2},
        {"Text": "Hiking", "score": 1}
      ],
    }
  ];
  void answerScore(int score) {
    _scoreCount += score;

    setState(() {
      _questionIndex = _questionIndex += 1;
    });
    if (_questionIndex < list.length) {
      print("you have morer questions left.");
    }
  }

  var _questionIndex = 0;
  var _scoreCount = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("This is my home!"),
      ),
      body: _questionIndex < list.length
          ? Quiz(
              list: list, onPress: answerScore, questionIndex: _questionIndex)
          : Result(_scoreCount),
    ));
  }
}
