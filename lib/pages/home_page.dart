import 'package:flutter/material.dart';
import 'package:quiz/models/question.dart';
import 'package:quiz/widgets/progress_bar_widget.dart';
import 'package:quiz/widgets/quiz.dart';
import 'package:quiz/widgets/result.dart';

import '../widgets/answer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _questionIndex = 0;
  int _countResult = 0;
  List<Icon> _icons = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz time!'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff2a375a),
        ),
        child: Column(
          children: <Widget>[
            ProgressBar(
                icons: _icons,
                count: _countResult,
                total: data.questions.length),
            _questionIndex < data.questions.length
                ? Quiz(
                    index: _questionIndex,
                    questionData: data,
                    onChangeAnswer: _onChangeAnswer,
                  )
                :
                Result(
                    total: data.questions.length,
                    count: _countResult,
                    onClearState: _clearState,
                  )
          ],
        ),
      ),
    );
  }

  void _clearState() => setState(() {
        _questionIndex = 0;
        _countResult = 0;
        _icons = [];
      });

  void _onChangeAnswer(bool isCorrect) => setState(() {
        if (isCorrect) {
          _icons.add(const Icon(
            Icons.brightness_1,
            color: Colors.lightGreenAccent,
          ));
          _countResult++;
        } else {
          _icons.add(const Icon(
            Icons.brightness_1,
            color: Colors.redAccent,
          ));
        }
        _questionIndex++;
      });
}
