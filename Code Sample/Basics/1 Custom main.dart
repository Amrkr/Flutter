//custom written

import 'package:flutter/material.dart';

/*void main(){
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

//create a widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    /*return MaterialApp(home: Text('Hello!!'),);*/
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('This is default text !'),
      ),
    );
  }
}

