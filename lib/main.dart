import 'package:financy/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Transaction> transactions = [
    Transaction(
        id: 1,
        title: 'Iskon',
        amount: 120,
        date: DateTime.now(),
        aircashNo: 300591),
    Transaction(
        id: 2,
        title: 'BonBon',
        amount: 150,
        date: DateTime.now(),
        aircashNo: 300592),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FiNancy',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('FiNancy'),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(labelText: 'Name'),
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: 'Amount'),
                        ),
                        TextField(
                          decoration:
                              InputDecoration(labelText: 'Aircash Number'),
                        ),
                        Container(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Add Transaction',
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    ...transactions.map(
                      ((tx) {
                        return SizedBox(
                          width: double.infinity,
                          child: Card(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          tx.title,
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.redAccent),
                                        ),
                                        Text(
                                          DateFormat('dd.MM.yyyy')
                                              .format(tx.date),
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.blueGrey),
                                        )
                                      ],
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'HRK ${tx.amount}',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.redAccent),
                                          ),
                                          Text(
                                            'Aircash: ${tx.aircashNo}',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blueGrey),
                                          )
                                        ]),
                                  ]),
                            ),
                          ),
                        );
                      }),
                    ).toList(),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
