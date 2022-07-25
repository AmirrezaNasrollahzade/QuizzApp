// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resultHandler;
  const Result(
      {Key? key, required this.resultScore, required this.resultHandler})
      : super(key: key);
  String get resultPhrase {
    String resultText = 'You did it.';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = ' Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'you are ... strong?!';
    } else {
      resultText = 'you are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          child: Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.black),
          onPressed: resultHandler,
          child: const Icon(Icons.restart_alt),
        )
      ],
    );
  }
}
