import 'package:expense_planner/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
final List<Transaction> transaction = [
    Transaction(
    id:'t1',
    title:'new shoes',
    amount: 10.77,
    date: DateTime.now(),
      ),

    Transaction(
    id:'t2',
    title:'bag',
    amount: 80.78,
    date: DateTime.now(),
      )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                width: double.infinity,
                child: const Card(
                  color: Colors.blueAccent,
                  child: Text('Chart'),
                  elevation: 5,
                )),
            const Card(
              color: Colors.red,
              child: Text('transaction'),
            ),
            const Card(
              child: Text('gjghhvgkhh'),
            )
          ],
        ));
  }
}
