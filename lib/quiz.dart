import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function? answerQuestion; //note Flutter
  const Quiz(
      {Key? key,
      required this.questionIndex,
      required this.questions,
      required this.answerQuestion})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //textQuestion
        Question(questionIndex: questionIndex, questions: questions),
        //textAnswer {Buttons}
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
                  answer: answer['text'] as String,
                  //note Flutter
                  selectHandler: () => answerQuestion!(answer['score'])),
            )
            .toList(),
      ],
    );
  }
}
