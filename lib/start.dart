import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  final VoidCallback startHandler;
  const Start(this.startHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'Что ты знаешь о русской революции?',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28),
        ),
        Container(child: Text(
          'Ровно сто лет назад, в 1917 году, свершилась Октябрьская революция, которая повлияла на ход всей мировой истории. Хорошо ли ты знаешь отечественную историю? Пройди тест, проверь себя!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ), margin: EdgeInsets.all(12)),

        Image.asset('assets/images/revolution.jpg'),
        Spacer(),
        Container(
          child: ElevatedButton(
            onPressed: startHandler,
            child: Text('Начать тест'),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          ),
          width: double.infinity,
          margin: EdgeInsets.all(12),
        ),
        Spacer(),
      ],
    );
  }
}
