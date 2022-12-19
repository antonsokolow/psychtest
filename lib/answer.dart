import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;
  final int answerIdx;

  const Answer(this.answerIdx, this.answerText, this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(
          answerText,
          textAlign: TextAlign.left,
          style: (TextStyle()),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            alignment: Alignment.centerLeft),
        onPressed: () => answerHandler(answerIdx),
      ),
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
    );
  }
}
