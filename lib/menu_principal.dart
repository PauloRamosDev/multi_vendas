import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multivendas/bottom_bar.dart';
import 'package:multivendas/card_categories.dart';
import 'package:multivendas/delalhes_produto.dart';
import 'package:multivendas/home_page.dart';
import 'package:multivendas/meus_dados.dart';
import 'package:multivendas/pedidos_page.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  int category = 0;
  TabController controller;

  var _tabs = <Widget>[
    HomePage(),
    PedidosPage(),
    MeusDados(),
  ];

  @override
  void initState() {
    super.initState();
    controller = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Bem vindo, Paulo'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetalhesProduto()));
      }),
      bottomNavigationBar: MyBottombar(
        currentIndex: (index) => controller.animateTo(index),
      ),
      body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: _tabs),
    );
  }
}
