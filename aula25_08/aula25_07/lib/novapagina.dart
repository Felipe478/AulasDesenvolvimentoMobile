import 'package:flutter/material.dart';
import 'package:aula25_07/navegar.dart';

class Aula25_08 extends StatefulWidget {
  @override
  _Aula25_08State createState() => _Aula25_08State();
}

class _Aula25_08State extends State<Aula25_08> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column (
      children: [
        Divider(
          height: 20,
        ),
        RaisedButton(onPressed: () {
          return Navigator.push(context, MaterialPageRoute(builder: (context) => Navegar(parametro: 'OI',)));
        },
        child: Text('Navegar'),
        ),

      ],
      )
    );
  }
}