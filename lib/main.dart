// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:quizz_app/quiz.dart';
import 'package:quizz_app/result.dart';

void main() => runApp(const MyApp());

//note stateful 1
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  //note stateful 2
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

//note stateful 3
class MyAppState extends State<MyApp> {
  int score = 0;
  //questionIndex
  int _questionIndex = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      score = 0;
    });
  }

  //this function for nextQuestion(questionIndex Plus)
  void nextQuestion(int newScore) {
    score += newScore;
    setState(() {
      _questionIndex++;
    });

    print(score);
  }

  //List of the Questions
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App What\'s up?'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: nextQuestion, //note Flutter
                questions: _questions,
              )
            : Result(
                resultHandler: resetQuiz,
                resultScore: score,
              ),
      ),
    );
  }
}
