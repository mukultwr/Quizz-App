import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  //final wii be in runtime
  final String answerText;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      color: Colors.blue,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        // ignore: avoid_print, unnecessary_const
        onPressed: selectHandler,
        // ignore: prefer_const_constructors
        child: Text(answerText),
      ),
    );
  }
}
