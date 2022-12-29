// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_first/Question.dart';
import 'package:flutter_first/result.dart';
import 'answer.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  var totalscore = 0;
  void reset() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
  }

  void questionAnswer(int score) {
    totalscore = totalscore + score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("it works");
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'QuestionNumber': 'What is your name tell me',
        'Answers': [
          {'Text': 'Mudit', 'score': 0},
          {'Text': 'ABC', 'score': 10},
        ],
      },
      {
        'QuestionNumber': "What is your birthplace",
        'Answers': [
          {'Text': 'xyz', 'score': 5},
          {'Text': 'not to say', 'score': 0},
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is title"),
        ),
        body: questionIndex < question.length
            ? quiz(questionAnswer, question, questionIndex)
            : result(totalscore, reset),
      ),
    );
  }
}
