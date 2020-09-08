import 'package:america/paginaprincipal.dart';
import 'package:flutter/material.dart';

class SobreOJogo extends StatefulWidget {
  @override
  _SobreOJogoState createState() => _SobreOJogoState();
}

class _SobreOJogoState extends State<SobreOJogo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        color: Colors.green,
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Image.asset('imagens/QuizDoFutebol.png',
                height: 200,
                width: 200,
                ),
                Text('O Quiz do Futebol é um jogo considerado de nível Intermediário, onde algumas perguntas sobre ' + 
                'diferentes competições de Futebol são abordadas, contendo elementos atuais e mais antigos sobre elas. ' +
                'Entre as competições abordadas estão:',
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  fontFamily: 'Arial',
                ),
                textAlign: TextAlign.justify,),

                Divider(
                  height: 25,
                  color: Colors.transparent,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chevron_right),
                    Text('Copa do Mundo',
                    style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,)
                  ],
                ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chevron_right),
                    Text('Liga dos Campeões',
                    style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                   fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chevron_right),
                    Text('Campeonato Brasileiro',
                    style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 16,
                   fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chevron_right),
                    Text('Bola de Ouro da FIFA',
                    style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                   fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,)
              ],           
          ),
           Divider(height: 20,
           color: Colors.transparent),

           Row(
             children: [
               Expanded(child: RaisedButton(
                 child: 
                 Text('INÍCIO',
                 style: TextStyle(
                   color: Colors.green,
                   fontWeight: FontWeight.bold,
                   fontSize: 20,
                 ),
                 ),
                 onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => America()));
               }))
             ],
           )
              ],

              ),
    )
    )
    );
  }
}