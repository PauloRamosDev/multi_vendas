import 'package:flutter/material.dart';

class MeusDados extends StatefulWidget {
  @override
  _MeusDadosState createState() => _MeusDadosState();
}

class _MeusDadosState extends State<MeusDados> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.pink,
            height: 250,
          ),
          Text('nome'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Paulo da silva ramos'),
          ),
          Text('endereço'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Rua americana 350, Vila maria luiza Fco Morato'),
          ),
          Text('opção de pagamento'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Dinheiro'),
          ),
          Text('data'),
        ],
      ),
    );
  }
}
