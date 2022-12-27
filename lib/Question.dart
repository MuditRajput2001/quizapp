import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questiontext;
  // ignore: use_key_in_widget_constructors
  Question(this.questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questiontext,
        style: TextStyle(fontSize: 20, color: Colors.pink),
        textAlign: TextAlign.center,
      ),
    );
  }
}
