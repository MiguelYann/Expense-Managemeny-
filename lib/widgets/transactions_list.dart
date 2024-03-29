import 'package:expanse_project/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:300,
      child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            return Card(
                child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 18),
                  padding: EdgeInsets.all(8),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.teal)),
                  child: Text(
                    "${transactions[index].amount.toStringAsFixed(2)} \$",
                    style: TextStyle(
                        color: Colors.teal, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      transactions[index].title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(DateFormat.yMd().format(transactions[index].date),
                        style: TextStyle(color: Colors.grey))
                  ],
                )
              ],
            ));
          }),
    );
  }
}
