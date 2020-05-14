import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetalhesProduto extends StatefulWidget {
  @override
  _DetalhesProdutoState createState() => _DetalhesProdutoState();
}

class _DetalhesProdutoState extends State<DetalhesProduto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Detalhes'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              child: Container(
                color: Colors.blue.shade100,
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(16),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          'Nome do produto grande',
                          textScaleFactor: 2,
                        )),
                        Container(
                          height: 50,
                          width: 100,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    Text(
                      'Preço: 7,00',
                      textScaleFactor: 1.2,
                    ),
                    Text(
                        'Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,'),
//                    Text('Itens Relarionados',textScaleFactor: 1.4,)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                          color: Colors.blue,
                          onPressed: (){},
                          child: Text(
                            'Adicionar',
                            textScaleFactor: 2,
                          ),
                          clipBehavior: Clip.antiAlias,
                          hoverElevation: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
