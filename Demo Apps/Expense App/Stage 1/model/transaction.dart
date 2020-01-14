//Not a Widget
//Blueprint for transaction data
import 'package:flutter/foundation.dart';   //also cupertino.dart//responsible for @required decorator

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction({
    @required  this.id,
    @required  this.title,
    @required  this.amount,
    @required  this.date,
  });
}
