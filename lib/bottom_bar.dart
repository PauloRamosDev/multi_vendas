import 'package:flutter/material.dart';

class MyBottombar extends StatefulWidget {
  int index;

  MyBottombar({this.index = 0});

  @override
  _MyBottombarState createState() => _MyBottombarState();
}

class _MyBottombarState extends State<MyBottombar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.index,
        onTap: (index) {
          setState(() {
            widget.index = index;
          });
        },
        showUnselectedLabels: false,
        selectedFontSize: 16,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Principal'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Pedidos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            title: Text('Meus dados'),
          ),
        ]);
  }
}
