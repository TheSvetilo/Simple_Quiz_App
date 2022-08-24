import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final count;
  final total;
  final onClearState;

  const Result({Key? key, this.count, this.total, this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message = "";
    if (count >= 0 && count < 2) {
      message = 'Ты плохо меня знаешь';
    } else if (count >= 2 && count < 4) {
      message = 'Мы хорошие друзья';
    } else {
      message = 'Ты все про меня знаешь!';
    }
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black,
                blurRadius: 15,
                spreadRadius: 0,
                offset: Offset(2, 5))
          ],
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(colors: [
            Colors.deepPurpleAccent,
            Colors.purple,
            Colors.purpleAccent
          ])),
      child: Column(
        children: [
          Text(message,
              style: const TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center),
          const Divider(color: Colors.white),
          const SizedBox(height: 20,),
          Text('Верно ответил на $count из $total.'),
          const SizedBox(height: 20,),
          TextButton(
              onPressed: onClearState,
              child: const Text(
                'Попробовать снова',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
