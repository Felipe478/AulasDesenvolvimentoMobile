import 'package:flutter/material.dart';

class MinhaTela extends StatefulWidget {
  @override
  _MinhaTelaState createState() => _MinhaTelaState();
}

class _MinhaTelaState extends State<MinhaTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Primeiro APP'),
        centerTitle: true,
      ),

      body: corpodapagina(),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        onPressed: () {
          print("Cliquei");
        },
      ),

      drawer: Container(
        width: 200,
        height: 200,
        color: Colors.white,
        child: Center (child: Text("América")
        ),
      ),

      );
  }

  Container corpodapagina() {
    return Container(
      color: Colors.lightGreen,
      width: 250,
      //child: Container(
        //margin: EdgeInsets.all(40),
       // width: 45,
        //color: Colors.red,
        //child: Text ("Oi"),
      //),      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text("América"),
          Text("América"),
          Text("América"),
          Text("América"),
          Container(
            color: Colors.orange,
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  color: Colors.purple,
                  child:Text("América", style: TextStyle(color: Colors.black)),
                ),
              Container (
                  width: 100,
                  height: 150,
                  color: Colors.white,
                  alignment: Alignment.centerRight,
                  child: 
                  Text("América", style: TextStyle(color: Colors.green,)),
              )
              ],
            ),
            ),
          Text("América"),
          Text("América"),
          Text("América"),
          Text("América"),
        ],
      ),
    );
  }
}