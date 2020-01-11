import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final resultHandler;

  Result(this.resultScore, this.resultHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'Yor are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Preety likable';
    } else if (resultScore <= 16) {
      resultText = 'You are .... strange?!';
    } else {
      resultText = 'You are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Reset Quiz'),
            textColor: Colors.blue,
            onPressed: resultHandler,
          ),
        ],
      ),
    );
  }
}
