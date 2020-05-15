import 'package:flutter/material.dart';

import 'functions.dart';

class PedidosPage extends StatefulWidget {
  @override
  _PedidosPageState createState() => _PedidosPageState();
}

class _PedidosPageState extends State<PedidosPage>  with AutomaticKeepAliveClientMixin<PedidosPage>{


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: returnWidth(
                        small: 11,
                        medium: 8,
                        large: 8,
                        width: MediaQuery.of(context).size.width),
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                      color: const Color(0xfff8f4f4),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6)
                      ],
                    ),
                  ),
                  Container(
                    width: 107.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                        image: const NetworkImage(
                            'https://media.glassdoor.com/l/e5/93/7e/cd/tablet-verification.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
