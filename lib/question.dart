import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  const Question(
      {Key? key, required this.questionIndex, required this.questions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      questions[questionIndex]['questionText'] as String, // text
      style: const TextStyle(
          color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
