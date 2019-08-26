import 'package:expanse_project/models/transaction.dart';
import 'package:expanse_project/widgets/transactions_list.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {

  _UserTransactionState createState() => _UserTransactionState();
}




class _UserTransactionState extends State<UserTransaction> {

 List<Transaction> user_transactions = [
    Transaction(
        id: 't1',
        date: DateTime.now(),
        amount: 89,
        title: "What the prices of Durant's jersey"),
    Transaction(
        id: 't2',
        date: DateTime.now(),
        amount: 180,
        title: "What the prices of Durant's shoes")
  ];
  void _addTransaction(String titleItem, double amountItem){

    final _newTransaction = Transaction(
      id: DateTime.now().toString(),
      date: DateTime.now(),
      amount: amountItem,
      title: titleItem 
    );
setState(() {
      user_transactions.add(_newTransaction);

});



  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: [
         NewTransaction(_addTransaction),
         TransactionList(user_transactions)
       ],
    )
    );
}}