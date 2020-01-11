import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  //selectHandler is the pointer to function passed. Function for incrementing the question index
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(answerText),
              onPressed: selectHandler,
            ),
    );
  }
}