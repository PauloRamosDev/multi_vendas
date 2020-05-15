import 'package:flutter/material.dart';

class MyBottombar extends StatefulWidget {
  final int initialIndex;
  final Function(int) currentIndex;

  MyBottombar({this.initialIndex = 0, this.currentIndex});

  @override
  _MyBottombarState createState() => _MyBottombarState();
}

class _MyBottombarState extends State<MyBottombar> {
  var _index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _index == null ? widget.initialIndex : _index,
        onTap: (index) {
          setState(() {
            _index = index;
            widget.currentIndex(index);
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
