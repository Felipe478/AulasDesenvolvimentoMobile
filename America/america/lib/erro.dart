import 'package:america/paginaprincipal.dart';
import 'package:flutter/material.dart';

class Erro extends StatefulWidget {
  final int questao;

  const Erro({Key key, this.questao}) : super(key: key);

  @override
  _ErroState createState() => _ErroState(questao);
}

class _ErroState extends State<Erro> {
  final int quest;
  String informativo;

  _ErroState(this.quest);

  @override
  void initState(){
      super.initState();
      if ((quest >= 0) && (quest <=2)) {
        informativo = 'Seu desempenho foi tão decepcionante quanto a atuação do Brasil na semifinal da Copa do ' +
        'Mundo de 2014, imaginávamos uma grande atuação, mas o que aconteceu foi um 7x1!!';
      }    
      else
       if ((quest >= 3) && (quest <=5)) {
        informativo = 'Sua atuação foi igual a de Técnico contratado recentemente no Futebol Brasileiro, teve um Gás no início, ' +
        ' mas depois conheceu-se as limitações no elenco e a derrota apareceu!!';
      }    
      else
       if ((quest >= 6) && (quest <=8)) {
        informativo = 'Seu elenco era limitado para a continuação na Competição, fique satisfeito com essa vaga na Competição Secundária, ' +
        ' reforce seu Time e na próxima se os fatos externos não atrapalharem, o Título pode vir!!';
      }   else
       if (quest == 9){
        informativo = 'MALDADE!! Seu time atacou os 90 minutos, foi superior, mostrou qualidade técnica, mas o Futebol é assim mesmo, ' +
        ' injusto. Aos 15 minutos do 2º Tempo, veio o vacilo e o Título foi perdido!!';
      }   

  }

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

              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(
                    Icons.error,
                    color: Colors.white,
                  ),
                  Text(' Questões acertadas: $quest',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  ),
                  )
                ],
                ),
              ),

              Divider(
                height: 20,
                color: Colors.transparent,
              ),

              CircleAvatar(
                   radius: 125,
                   backgroundImage: AssetImage('imagens/Decepcao.jpg'),
              ),

              Divider(
                height: 20,
                color: Colors.transparent,
              ),

              Text(informativo,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.none,
                fontFamily: 'Arial',
              ),
              ),

              Divider(
                height: 25,
                color: Colors.transparent,
              ),


                Row(
                  children: [
                    Expanded(
                      child: RaisedButton(
                        color: Colors.green,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget> [
                              Icon (Icons.replay,
                              color: Colors.white,),
                              Text(' TENTAR NOVAMENTE',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),),
                            ],
                          ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => America()));
                        }),
                    ),
                  ],
                )

          ],
    ),
      ),
    );
  }
}