import 'package:flutter/material.dart';

import "./question.dart";
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> list;
  final Function onPress;
  final int questionIndex;

  Quiz(
      {required this.list, required this.onPress, required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        list[questionIndex]["questionText"] as String,
      ),
      ...(list[questionIndex]["answers"] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => onPress(answer["score"]), answer["Text"] as String);
      }).toList()
    ]);
  }
}
