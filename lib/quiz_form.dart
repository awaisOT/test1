import 'package:flutter/material.dart';
import './options.dart';
import '/question.dart';

class QuizForm extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final VoidCallback indexFunction;
  QuizForm(this.questionIndex, this.indexFunction, this.questions, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]["questionText"] as String,
      ),
      ...(questions[questionIndex]["optionsText"] as List<String>)
          .map((answer) {
        return Options(indexFunction, answer);
      }).toList()
    ]);
  }
}
