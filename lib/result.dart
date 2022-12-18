import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback restartHandler;
  final int correctAnswers;
  const Result(this.correctAnswers, this.restartHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'Результат:',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28),
        ),
        Text(
          '${correctAnswers}/10',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        Container(
          child: ElevatedButton(
            onPressed: restartHandler,
            child: Text('Попробовать ещё раз'),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
                alignment: Alignment.centerLeft),
          ),
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Spacer(),
      ],
    );
  }
}
