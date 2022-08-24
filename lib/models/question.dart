class Question {
  final String questionTitle;
  final List<Map> answers;

  Question({required this.questionTitle, required this.answers});
}

class QuestionData {
  final questions = [
    Question(questionTitle: 'Как зовут кота?', answers: [
      {'answer': ' Archibald', 'isCorrect': true},
      {'answer': 'Bella'},
      {'answer': 'Kolbasa'},
      {'answer': 'Sausage'}
    ]),
    Question(questionTitle: 'Когда в отпуск?', answers: [
      {'answer': 'Soon', 'isCorrect': true},
      {'answer': 'Not soon'},
      {'answer': 'Never'},
      {'answer': 'Ever'}
    ]),
    Question(questionTitle: 'Сколько кушать?', answers: [
      {'answer': 'Enough', 'isCorrect': true},
      {'answer': 'Not enough'},
      {'answer': 'Okay'},
      {'answer': 'Hello'}
    ]),
    Question(questionTitle: 'А надо кодить?', answers: [
      {'answer': 'No'},
      {'answer': 'Yes'},
      {'answer': 'Cocos', 'isCorrect': true},
      {'answer': 'Ponos'}
    ]),
  ];
}
