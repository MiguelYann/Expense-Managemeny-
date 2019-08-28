import 'package:expanse_project/widgets/new_transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:expanse_project/widgets/transactions_list.dart';

import 'models/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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

  void _addTransaction(String titleItem, double amountItem) {
    final _newTransaction = Transaction(
        id: DateTime.now().toString(),
        date: DateTime.now(),
        amount: amountItem,
        title: titleItem);
    setState(() {
      user_transactions.add(_newTransaction);
    });
  }

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: (){},
            child: NewTransaction(_addTransaction),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
        onPressed: () => startAddNewTransaction(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => startAddNewTransaction(context),
          ),
        ],
        backgroundColor: Colors.teal,
        title: Text('Learn Flutter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                elevation: 15,
                color: Colors.orange,
                child: Text(
                  'Expenses',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TransactionList(user_transactions)
          ],
        ),
      ),
    );
  }
}
