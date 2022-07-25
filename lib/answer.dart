// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback? selectHandler; //note Flutter
  final String? answer;

  const Answer({Key? key, required this.answer, required this.selectHandler})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: selectHandler, //note Flutter
        color: Colors.blue,
        child: Text(answer!),
      ),
    );
  }
}
