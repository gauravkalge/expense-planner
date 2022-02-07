import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  NewTransaction(this.addTx, {Key? key}) : super(key: key);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTx(
      titleController.text,
      double.parse(amountController.text),
    );
    print(titleController.text);
    print(amountController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  )),
              controller: titleController,
              onSubmitted: (_) => submitData,
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Amount',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  )),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData,
            ),
            TextButton(
              child: const Text(
                'Add transaction',
                style: TextStyle(color: Colors.purple),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
