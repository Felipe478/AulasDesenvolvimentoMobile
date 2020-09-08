 import 'package:flutter/material.dart';

class Navegar extends StatefulWidget {
final String parametro;

  const Navegar({Key key, this.parametro}) : super(key: key);

  @override
  _NavegarState createState() => _NavegarState(parametro);
}

class _NavegarState extends State<Navegar> {
  final String p2;

  _NavegarState(this.p2);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 100,
        ),

        Text(this.p2),

         Divider(
          height: 100,
        ),

        Container (
          width: 100,
          height: 100,
          color: Colors.white,
        )

      ],
    );
  }
}