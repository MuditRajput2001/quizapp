// ignore_for_file: use_key_in_widget_constructors

// import 'dart:html';
// import 'dart:ui';

// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'Question.dart';

class answer extends StatelessWidget {
  final VoidCallback selectHandler;
  String answers;
  answer(this.selectHandler, this.answers);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        child: Text(answers),
        onPressed: selectHandler,
      ),
    );
  }
}
