import 'package:flutter/material.dart';
import 'package:america/pergunta1.dart';

class America extends StatefulWidget {
  @override
  _AmericaState createState() => _AmericaState();
}

class _AmericaState extends State<America> {
  String aviso;
  int _paginaDeAcesso = 0;

  @override
  void initState(){
      super.initState();
      aviso = '';
  }

  Widget build(BuildContext context) {
 TextEditingController _nome = TextEditingController();

 final tela = [
  Container (
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          color: Colors.green[600],
          child: SingleChildScrollView(
            child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('imagens/QuizDoFutebol.png',
                        height: 200,
                        width: 200,),

                      Divider(
                        height: 10,
                        color: Colors.transparent,
                    ),

                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(8))
                      ),

                      child: Text('O QUIZ DO FUTEBOL é um aplicativo em forma de Quiz desenvolvido pelos alunos: Laura Marqueti e Felipe de ' + 
                      'Mattos. Ele faz parte do Método de Avaliação do 1º Bimestre da Disciplina de Desenvolvimento para Dispositivos ' +
                      ' Móveis sob a orientação do Professor Ricieri Massariol, dos quais foram abordados e utilizados diversos elementos da ' +
                      'Linguagem de Programação Dart utilizada para o Desenvolvimento em Flutter, exemplos desses pode-se citar: Passagem de Parâmetos ' +
                      ' entre as telas, os Métodos InitState() e SetState(), utilização de Container, Column, Row (propriedades específicas do Flutter), ' +
                      ' além das Estruturas de Programação, como Métodos, Vetores e a manipulação das Variáveis.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                      ),
                      ),

                    ),
                    Row(
                      children: [
                        Expanded(child: 
                          RaisedButton(
                            color: Colors.white,
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
               }
               )
               )
             ],
           ),
              
              ] ),
          ),
  ),

  Container(
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

              ],

              ),
    )
    )
    )
  ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Row(
          children: [
            Image.asset('imagens/futebol.png', 
            width: 40,
            height: 40,
            ),
            Text(' QUIZ DO FUTEBOL',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            )            
            ,)
          ],
        ),
      ),
      drawer: Scaffold(
        body: tela [_paginaDeAcesso],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _paginaDeAcesso,
          type: BottomNavigationBarType.fixed,
          iconSize: 40,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
              color: Colors.green[600],),
              title: Text('Projeto',
              style: TextStyle(
                color: Colors.black,
              ),),           
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
               color: Colors.green[400],),
              title: Text('Sobre',
              style: TextStyle(
                color: Colors.black,
              ),),
            )
          ],
          onTap: (index) {
            setState(() {
              _paginaDeAcesso = index;
            });
          },),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [

                Image.asset('imagens/QuizDoFutebol.png',
                height: 250,
                width: 250,),

                Divider(
                  height: 75,
                  color: Colors.transparent,
                ),

                Stack(
                    children: <Widget>[
                  Text(
                    'Digite seu nome:',
                    style: TextStyle(
                    fontSize: 20,
                    foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1
                  ..color = Colors.black,
                    ),
                  ),
                  Text(
                    'Digite seu nome:',
                    style: TextStyle(
                    fontSize: 20,
                    color: Colors.green[600],
                    ),
    ),
  ],
),
                  
               Divider(
                 color: Colors.transparent,
                  height: 10,
                  ),

                TextField(
                  controller: _nome,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(25)
                      )  
                  ),               
                ),

                  Divider(
                 color: Colors.transparent,
                  height: 10,
                  ),

                Row(
                  children: [
                    Expanded(child: 
                    RaisedButton(
                      color: Colors.green[700],
                      onPressed: () {
                      if (_nome.text != '') {
                      String nome = _nome.text;
                      return Navigator.push(context, MaterialPageRoute(builder: (context) => Pergunta1(nmUsuario: nome)));
                      }
                      else
                      {
                        setState(() {
                        aviso = '*Insira seu nome';
                        });
                      }
                    },
                    child: Text('Começar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    )
                    ,)
                  ],
                ),
                Text(aviso,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}