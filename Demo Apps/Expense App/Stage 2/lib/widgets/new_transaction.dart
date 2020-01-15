import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addNewTx;
  //final Function showToastMsg;

  NewTransaction(this.addNewTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text.trim();
    final enteredAmount = double.parse(amountController.text.trim());

    //If any value is empty, do nothing
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    //using 'widget', properties of this state's widget class can be accessed, from stateful widget
    // to its state class
    // it gets generated automatically after converting a stateless widget to stateful widget,
    // if there is any method

    widget.addNewTx(
      enteredTitle,
      enteredAmount,
    );

    // Close the current modal / current popup widget
    Navigator.of(context).pop();

    
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            //Title Input
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            //AMount Input
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) =>
                  submitData(), //annonymous fn taking a '_' argument which function 'submitData' will not care about or not usable
              //onChanged: (val) => amountInput = val,
            ),
            //Add Transaction button
            FlatButton(
              textColor: Colors.purple,
              child: Text('Add Transaction'),
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}
