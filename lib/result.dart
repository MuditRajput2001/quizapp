// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class result extends StatelessWidget {
  final int resultScore;
  result(this.resultScore);

  String get resultPhase {
    var resulttext = "You did it";
    if (resultScore <= 8) {
      resulttext = "you are awesome";
    } else if (resultScore <= 12) {
      resulttext = "You are chuteya";
    } else if (resultScore <= 16) {
      resulttext = "you are bad";
    } else {
      resulttext = "grt";
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhase),
    );
  }
}
