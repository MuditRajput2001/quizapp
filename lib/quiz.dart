import 'package:flutter/material.dart';
import 'Question.dart';
import 'answer.dart';

class quiz extends StatelessWidget {
  final Function questionAnswer;
  final List<Map<String, Object>> question;
  final questionIndex;

  quiz(this.questionAnswer, this.question, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['QuestionNumber'] as String),
        ...(question[questionIndex]['Answers'] as List<Map<String, Object>>)
            .map((Answers) => answer(
                () => questionAnswer((Answers['score'] as int)),
                Answers['Text'] as String))
      ],
    );
  }
}
