import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              constraints: BoxConstraints.tight(Size(0, 250)),
              child: Center(child: Text('Imagem'),),
            ),
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              child: Container(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.60),
                color: Colors.blue.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Preço: 7,00',
                          textScaleFactor: 1.2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,Descrião do item,'),
                      ),
//                    Text('Itens Relarionados',textScaleFactor: 1.4,)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            color: Colors.blue,
                            onPressed: () {},
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
        ));
  }
}
