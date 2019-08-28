import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTrans;

  NewTransaction(this.addTrans);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final amountInput = TextEditingController();

  final titleInput = TextEditingController();

  void submitData() {
    final enteredTitle = titleInput.text;
    final entereAmout = double.parse(amountInput.text);

    if (enteredTitle.isEmpty || entereAmout < 0) {
      return;
    }
    widget.addTrans(enteredTitle, entereAmout);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          //   color: Colors.orange,
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                onSubmitted: (_) => submitData(),
                controller: titleInput,
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submitData(),
                controller: amountInput,
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
