import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final bool isCorrect;
  final Function onChangeAnswer;

  const Answer(
      {Key? key,
      required this.title,
      required this.isCorrect,
      required this.onChangeAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(isCorrect),
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, blurRadius: 10.0, offset: Offset(1.0, 1.0))
            ],
            borderRadius: BorderRadius.circular(30.0),
            gradient: const LinearGradient(colors: [
              Colors.deepPurpleAccent,
              Colors.purple,
              Colors.purpleAccent
            ])),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
