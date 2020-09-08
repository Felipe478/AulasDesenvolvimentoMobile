import 'package:america/pergunta10.dart';
import 'package:flutter/material.dart';
import 'erro.dart';

class Pergunta9 extends StatefulWidget {
  final String nmUsuario;
  const Pergunta9({Key key, this.nmUsuario}) : super(key: key);

  @override
  _Pergunta9State createState() => _Pergunta9State(nmUsuario);
}

class _Pergunta9State extends State<Pergunta9> {
  int questao = 9;
  final String nomeUsuario;
  _Pergunta9State(this.nomeUsuario);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all (
              color: Colors.green,
              width: 6,
            )
        ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pergunta $questao',
            style: TextStyle(
              fontFamily: 'Ecologica',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.green,
              decoration: TextDecoration.none,
            ),
            ),

            Divider (
              height: 15,
              color: Colors.transparent,
            ),

            Text('A final do Campeonato Brasileiro de 1995 foi disputada entre?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'RobotoMono',
              decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),

            Divider (
              height: 15,
              color: Colors.transparent,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Erro(questao: this.questao-1)));
                    },
                  child: Container(
                  padding: EdgeInsets.all(0),
                  //margin: EdgeInsets.all(10),
                  height: 125,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.black,                     
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text('Flamengo \nvs\n Botafogo', 
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,),
                    ],
                  ),                  
                ),
                ),

                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pergunta10(nmUsuario: this.nomeUsuario)));
                    },
                child: Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(15),
                  height: 125,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.black,                     
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text('Santos \nvs\n Botafogo', 
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                    textAlign: TextAlign.center,
                  ),
                    ],
                  ),
                  
              ),
                ),
                

              ],
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Erro(questao: this.questao-1)));
                    },
                  child: Container(
                  padding: EdgeInsets.all(0),
                  //margin: EdgeInsets.all(15),
                  height: 125,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.black,                     
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text('Cruzeiro \nvs\n Botafogo', 
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,),
                    ],
                  ),                  
                ),
                ),


              GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Erro(questao: this.questao-1)));
                    },
                    child: Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(15),
                  height: 125,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.black,                     
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text('Santos \nvs\n Fluminense', 
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                    textAlign: TextAlign.center,
                  ),
                    ],
                  ),
                  
              ),
              ),
            
                  
                  

              ],
            ),

            Divider(
              color: Colors.transparent,
              height: 20,
            ),

            Text(nomeUsuario,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),)

          ],
        ),
      ),
    );
  }
}