//custom written

import 'package:flutter/material.dart';

//custom widget files import
import './quiz.dart';
import './result.dart'; //import 'package:flutter_complete_guide/result.dart'; //also true

/*void main(){
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

//create a widget
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyAppState();
  }
}

//adding _ (underscore) convert the class to private. Can be used in this current file only.
class _MyAppState extends State<MyApp> {
  //only 'final' will also work
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Lion', 'score': 6},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Tiger', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Amar', 'score': 6},
        {'text': 'Amit', 'score': 3},
        {'text': 'Max', 'score': 1}
      ],
    },
  ];

  //private property
  var _questionIndex = 0,
  _totalScore = 0;

  //reset the quiz
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  /* button click functions. Private function */
  void _answerQuestion(int score) {
    _totalScore += score;
   // print(_totalScore);
    setState(() {
      _questionIndex += 1;
    });

    //print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    /*return MaterialApp(home: Text('Hello!!'),);*/

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Behavior'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
