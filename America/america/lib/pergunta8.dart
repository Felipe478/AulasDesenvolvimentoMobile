import 'package:america/pergunta9.dart';
import 'package:flutter/material.dart';
import 'erro.dart';

class Pergunta8 extends StatefulWidget {
  final String nmUsuario;
  const Pergunta8({Key key, this.nmUsuario}) : super(key: key);

  @override
  _Pergunta8State createState() => _Pergunta8State(nmUsuario);
}

class _Pergunta8State extends State<Pergunta8> {
  int questao = 8;
  final String nomeUsuario;
  _Pergunta8State(this.nomeUsuario);

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

            Text('Quem foi o autor do GOL DA ESPANHA na final da Copa do Mundo de 2010' +
            ' que garantiu a primeira conquista para a "La Roja"?',
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
              height: 25,
              color: Colors.transparent,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector (
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pergunta9(nmUsuario: this.nomeUsuario)));
                    },
                    child: Container(
                  padding: EdgeInsets.all(0),
                  //margin: EdgeInsets.all(10),
                  height: 150,
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
                      _imagem('Iniesta'),
                  Text('Iniesta', 
                  textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),),
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
                  height: 150,
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
                      _imagem('DavidVilla'),
                  Text('David Villa', 
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
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
                  height: 150,
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
                      _imagem('Puyol'),
                  Text('Puyol', 
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),),
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
                  height: 150,
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
                      _imagem('Xavi'),
                  Text('Xavi', 
                  textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
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

  Image _imagem(String jogador) {
    return Image.asset('imagens/' + jogador +'.jpg', 
                width: 100,
                height: 100,
                );
  }
}