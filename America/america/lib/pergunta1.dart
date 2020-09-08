import 'package:flutter/material.dart';
import 'package:america/pergunta2.dart';
import 'erro.dart';

class Pergunta1 extends StatefulWidget {
final String nmUsuario;

  const Pergunta1({Key key, this.nmUsuario}) : super(key: key);

  @override
  _Pergunta1State createState() => _Pergunta1State(nmUsuario.toString());
}



class _Pergunta1State extends State<Pergunta1> {
  int questao = 1;

final String nUsuario;

  _Pergunta1State(this.nUsuario);

  @override
  


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

            Text('Qual seleção ganhou a Copa do Mundo de 1998?',
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
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Erro(questao: questao - 1)));
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
                      _imagem('Argelia'),
                  Text('Argélia', 
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Erro(questao: questao - 1)));
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
                      _imagem('Alemanha'),
                  Text('Alemanha', 
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Erro(questao: questao - 1)));
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
                      _imagem('Brasil'),
                  Text('Brasil', 
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pergunta2(nmUsuario: this.nUsuario)));
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
                       _imagem('França'),
                  Text('França', 
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                  ),
                    ],
                  ),
                  
              ),
                  )
                  

              ],
            ),

            Divider(
              color: Colors.transparent,
              height: 20,
            ),

            Text(nUsuario,
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

  Image _imagem(String selecao) {
    return Image.asset('imagens/'+ selecao +'.png', 
                width: 100,
                height: 100,
                );
  }
}