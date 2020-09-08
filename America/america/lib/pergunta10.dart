import 'package:america/Vecendor.dart';
import 'package:flutter/material.dart';
import 'erro.dart';

class Pergunta10 extends StatefulWidget {
  final String nmUsuario;
  const Pergunta10({Key key, this.nmUsuario}) : super(key: key);

  @override
  _Pergunta10State createState() => _Pergunta10State(nmUsuario);
}

class _Pergunta10State extends State<Pergunta10> {
  int questao = 10;
  final String nomeUsuario;
  _Pergunta10State(this.nomeUsuario);

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

            Text('Qual continente apresenta o maior número de títulos da Copa do Mundo?',
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Erro(questao: this.questao-1)));
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
                      _imagem('Conmebol'),
                  Text('América do Sul', 
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Vencedor(nmUsuario: this.nomeUsuario)));
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
                      _imagem('UEFA'),
                  Text('Europa', 
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
                      _imagem('Concacaf'),
                  Text('América do Norte e Central', 
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
                      _imagem('Asia'),
                  Text('Ásia', 
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

  Image _imagem(String continente) {
    return Image.asset('imagens/'+ continente +'.png', 
                width: 100,
                height: 100,
                );
  }
}