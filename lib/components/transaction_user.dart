import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'transaction_form.dart';
import 'transection_list.dart';

class TransactionUser extends StatefulWidget {

  @override
  _TransactionUsarState createState() => _TransactionUsarState();
}

class _TransactionUsarState extends State<TransactionUser> {

  final _transaction = [
    Transaction(
      id: 1,
      title: "Novo Tenis de corrida",
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 2,
      title: "Conta de Luz",
      value: 150.98,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transaction),
        TransactionForm(),
      ],
    );
  }
}