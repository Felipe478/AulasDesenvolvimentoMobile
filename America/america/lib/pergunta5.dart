import 'package:america/pergunta6.dart';
import 'package:flutter/material.dart';
import 'erro.dart';

class Pergunta5 extends StatefulWidget {
  final String nmUsuario;

  const Pergunta5({Key key, this.nmUsuario}) : super(key: key);

  @override
  _Pergunta5State createState() => _Pergunta5State(nmUsuario);
}

class _Pergunta5State extends State<Pergunta5> {
  int questao = 5;
final String nomeUsuario;

  _Pergunta5State(this.nomeUsuario);

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

            Text('A qual time pertence esse escudo?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'RobotoMono',
              decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),

            _imagem('Americano'),

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
                  Text('RB Salzburg', 
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
                  Text('Bragantino', 
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
                  Text('Operário', 
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pergunta6(nmUsuario: this.nomeUsuario)));
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
                  Text('Americano', 
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

  Image _imagem(String time) {
    return Image.asset('imagens/' + time +'.png',
          width: 200,
          height: 200,
          );
  }
}