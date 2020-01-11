//custom written

import 'package:flutter/material.dart';

//custom widget files import
import './question.dart';
import './answer.dart';


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
class _MyAppState extends State<MyApp>{
  //private property
  var _questionIndex = 0;

  /* button click functions. Private function */
  void _answerQuestion(){
    setState(() {
      _questionIndex += 1;
    });
    
    print(_questionIndex);
  }


  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    /*return MaterialApp(home: Text('Hello!!'),);*/

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion), 
          ],
        ),
      ),
    );
  }
}

