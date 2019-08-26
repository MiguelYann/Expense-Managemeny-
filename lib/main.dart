import 'package:expanse_project/widgets/new_transaction.dart';
import 'package:expanse_project/widgets/user_transaction.dart';
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
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Learn Flutter'),
      ),
      body: Column(
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
          UserTransaction()
  
       
        ],
      ),
    );
  }
}
