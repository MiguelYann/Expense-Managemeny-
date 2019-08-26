import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final amountInput = TextEditingController();
  final titleInput = TextEditingController();
  final Function addTrans;

  NewTransaction(this.addTrans);

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
                controller: titleInput,
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
              ),
              TextField(
                controller: amountInput,
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
              ),
              FlatButton(
                child: Text("Add transaction"),
                color: Colors.teal,
                textColor: Colors.white,
                //     onPressed: ()[],
                onPressed: () {
                 addTrans(titleInput.text,double.parse(amountInput.text));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
