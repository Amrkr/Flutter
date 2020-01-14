import 'package:flutter/material.dart';

import './widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      /*theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  //User Input propertiex to save the value of input box value/text
  // String titleInput;
  // String amountInput;

  //OR using controller // alternative to onChange event
  final titleController  = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense App'),
      ),
      body: SingleChildScrollView(
        //Add Scrolling
        child: Column(
          // Chart Area

          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text('CHART'),
                color: Colors.blueAccent,
                elevation: 5,
              ),
            ),

            // User Input for New Transaction
            // TranSaction list Area
            UserTransactions(),
          ],
          ),  
            
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
