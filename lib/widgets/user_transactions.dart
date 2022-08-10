import 'package:flutter/material.dart';
import 'package:financy/widgets/new_transaction.dart';
import 'package:financy/widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: '1',
        title: 'Iskon',
        amount: 120,
        date: DateTime.now(),
        aircashNo: 300591),
    Transaction(
        id: '2',
        title: 'BonBon',
        amount: 150,
        date: DateTime.now(),
        aircashNo: 300592),
  ];

  void _addNewTransaction(String TxTitle, double TxAmount, int TxAircashNo) {
    final newTx = Transaction(
      title: TxTitle,
      amount: TxAmount,
      aircashNo: TxAircashNo,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}
