import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCategories extends StatelessWidget {
  final bool select;
  final label;

  const CardCategories({Key key, this.select, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 100,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.shopping_cart,
              size: 30, color: select ? Colors.white : Colors.blue),
          Text(
            label,
            textScaleFactor: 1.2,
            style: TextStyle(color: select ? Colors.white : Colors.blue,fontWeight: FontWeight.bold),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: select ? Colors.blue : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(16)),
    );
  }
}
