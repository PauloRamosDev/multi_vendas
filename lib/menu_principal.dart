import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multivendas/bottom_bar.dart';
import 'package:multivendas/card_categories.dart';
import 'package:multivendas/delalhes_produto.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Bem vindo, Paulo'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => DetalhesProduto()));
      }),
      bottomNavigationBar: MyBottombar(),
      body: Column(
        children: <Widget>[
          //pesquisa
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Colors.blue),
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25, left: 16, right: 16),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Center(child: ListTile(leading: Icon(Icons.search))),
              ),
            ),
          ),
          //scroll
          Expanded(child: buildListView())
        ],
      ),
    );
  }

  ListView buildListView() {
    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              6,
                  (index) =>
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardCategories(
                      label: 'Categoria',
                      select: true,
                    ),
                  ),
            ),
          ),
        ),
        //Destaques
        Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Destaques',
                      textScaleFactor: 2,
                    ),
                    Text('Fechar')
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      3,
                          (index) =>
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade300,
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                        offset: Offset(0, 2))
                                  ]),
                            ),
                          )),
                ),
              ),
            ],
          ),
        ),
        //extra
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 500,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(16)),
          ),
        ),
      ],
    );
  }
}
