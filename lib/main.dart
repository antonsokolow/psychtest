import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import './result.dart';
import './start.dart';
import './questions.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    final correctAnswers = useState(0);
    final showStartScreen = useState(true);

    final answerQuestion = useCallback((int answerIdx) {
      if (answerIdx == questions[counter.value]['correctAnswer']) {
        correctAnswers.value++;
      }
      counter.value++;
      print('correctAnswers: ${correctAnswers.value}');
    }, [counter]);

    final startTest =
        useCallback(() => showStartScreen.value = false, [counter]);

    final restart = useCallback(() {
      counter.value = 0;
      correctAnswers.value = 0;
    }, [counter]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text('Questionnaire app')),
          body: () {
            if (showStartScreen.value) {
              return Start(startTest);
            }
            if (counter.value < questions.length) {
              return Quiz(
                  question: questions[counter.value]['question'],
                  answers: questions[counter.value]['answers'],
                  answerQuestion: answerQuestion);
            } else {
              return Result(correctAnswers.value, restart);
            }
          }()),
    );
  }
}
