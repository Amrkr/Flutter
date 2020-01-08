//custom written

import 'package:flutter/material.dart';

/*void main(){
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

//create a widget
class MyApp extends StatelessWidget {

  var questionIndex = 0;

  /* button click functions */
  void answerQuestion(){
    questionIndex += 1;
    print('Answer Chosen !!');
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Chosen!!'),
              ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //other code
                print('Answer 3 chosen!!');
                },
            ),
          ],
        ),
      ),
    );
  }
}

