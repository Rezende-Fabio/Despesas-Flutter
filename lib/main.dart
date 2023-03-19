import 'package:despesas/models/transection.dart';
import 'package:flutter/material.dart';

main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas Pessoais"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text("Gráfico"),
              elevation: 5,
            ),
          ),
          Card(
            child: Text("Lista de transações"),
            elevation: 5,
          ),
        ],
      ),
    );
  }
}
