import 'package:financy/widgets/user_transactions.dart';
import 'package:flutter/material.dart';
import 'package:financy/widgets/user_transactions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

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
              children: [UserTransactions()],
            ),
          )),
    );
  }
}
