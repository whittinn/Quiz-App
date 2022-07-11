import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  Result(this.count);

  String get result {
    String results = "Guess";
    if (count >= 5) {
      results = "Nice";
    } else {
      results = "Bad";
    }
    return results;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        result,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
