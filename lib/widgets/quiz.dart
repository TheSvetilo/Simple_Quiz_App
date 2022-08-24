import 'package:flutter/material.dart';

import 'answer_widget.dart';

class Quiz extends StatelessWidget {
  final index;
  final questionData;
  final onChangeAnswer;

  const Quiz({Key? key, this.index, this.questionData, this.onChangeAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 25),
          child: Text(questionData.questions[index].questionTitle,
              style: const TextStyle(fontSize: 22, color: Colors.white)),
        ),
        ...questionData.questions[index].answers
            .map((value) => Answer(
                  title: value['answer'],
                  isCorrect: value.containsKey('isCorrect') ? true : false,
                  onChangeAnswer: onChangeAnswer,
                ))
            .toList(),
      ],
    );
  }
}
