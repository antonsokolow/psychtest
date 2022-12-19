import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Start extends StatelessWidget {
  final VoidCallback startHandler;
  const Start(this.startHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(
          flex: 1,
        ),
        Text(
          'Что ты знаешь о русской революции?',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28),
        ),
        Container(
            child: Text(
              'Ровно сто лет назад, в 1917 году, свершилась Октябрьская революция, которая повлияла на ход всей мировой истории. Хорошо ли ты знаешь отечественную историю? Пройди тест, проверь себя!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            margin: EdgeInsets.all(12)),
        Image.asset('assets/images/revolution.jpg'),
        Spacer(flex: 2),
        Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: SlideAction(
                child: Text(
                  'Начать тест',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                sliderButtonIcon: Icon(Icons.lock),
                outerColor: Colors.blue,
                onSubmit: startHandler,
              ),
            );
          },
        ),
        Spacer(),
      ],
    );
  }
}
