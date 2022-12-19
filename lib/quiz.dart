import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<String> answers;
  final Function answerQuestion;
  const Quiz({this.question, this.answers, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(''),
        Question(question),
        ...answers.asMap().entries.map((answer) {
          int answerIdx = answer.key;
          String answerText = answer.value;
          return Answer(answerIdx, answerText, answerQuestion);
        }).toList(),
      ],
    );
  }
}
