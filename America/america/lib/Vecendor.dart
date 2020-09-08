import 'dart:math';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Vencedor extends StatefulWidget {
  final String nmUsuario;

  const Vencedor({Key key, this.nmUsuario}) : super(key: key);
  

  

  @override
  _VencedorState createState() => _VencedorState(nmUsuario);
}

class _VencedorState extends State<Vencedor> {
  var texto = '';
   AssetsAudioPlayer _assetsAudioPlayer;
  

 String nomeUsuario;


  _VencedorState(this.nomeUsuario);

@override
    void initState(){
      super.initState();
      var curiosidades = new List(5);
    curiosidades[0] = 'A partir da Unificação da Taça Brasil e da Taça Roberto Gomes Pedrosa o Palmeiras' +
    ' passou a se tornar o Maior Campeão Brasileiro com 10 Conquistas (1960, 1967(2x), 1969, 1972, 1973,' +
    ' 1993, 1994, 2016 e 2018.\n' +
    'OBS: Isso na data de 14/08/2020';
    curiosidades[1] = 'O estado de São Paulo é o que apresenta o maior número de troféus do Campeonato Brasileiro' +
    ' com 32 conquistas, seguido por Rio de Janeiro com 16 e o Rio Grande do Sul com 5 troféus conquistados.\n' +
    'OBS: Isso na data de 14/08/2020';
    curiosidades[2] = 'Santos e Guarani são as únicas equipes do interior de seu estado a conquistarem um título' +
    ' do Campeonato Brasileiro, o restante das 61 edições foram conquistadas por times da capital.\n' +
    'OBS: Isso na data de 14/08/2020';
    curiosidades[3] = 'Apesar de serem disputadas 21 edições, a Copa do Mundo apresentou apenas 8 campeões diferentes,' +
    ' 3 da América do Sul (Brasil, Argentina e Uruguai) e 5 da Europa (Alemanha, Itália, França, Espanha e Inglaterra.\n' +
    'OBS: Isso na data de 14/08/2020';
    curiosidades[4] = 'O maior número de vitórias consecutivo de vitórias alcançadas por uma seleção em Copas do Mundo' +
    ' foi 11, alcançando pelo Brasil, entre a Copa do Mundo de 2002 e 2006, tendo início na vitória de 2x1 frente a Turquia' +
    ' e terminando com a vitória de 3x0 sobre Gana, nas Oitavas de Final.\n' +
    'OBS: Isso na data de 14/08/2020';
      final random = new Random();
      int numero = random.nextInt(4);
      texto = curiosidades[numero]; 
      nomeUsuario = nomeUsuario.toString().toUpperCase();   

    _assetsAudioPlayer = AssetsAudioPlayer();
    _assetsAudioPlayer.open(
      Audio('musica/Toque.mp3'),
    );
    _assetsAudioPlayer.playOrPause();
  }

  @override
  void dispose() {
    _assetsAudioPlayer = null;
    super.dispose();
  }


      
  @override
  Widget build(BuildContext context) {   
           return Container(
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

                   Divider(
                    height: 30,
                    color: Colors.transparent,
                  ),

                  
                   Text('PARABÉNS $nomeUsuario!!',
                    textAlign: TextAlign.center,
                      style: TextStyle(
                       fontFamily: 'Ecologica',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        letterSpacing: 6,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  

                  Divider(
                    height: 50,
                    color: Colors.transparent,
                  ),

                  CircleAvatar(
                   radius: 125,
                   backgroundImage: AssetImage('imagens/Vencedor.jpg'),
                  ),
                  

                  Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      border: Border (top: BorderSide(
                        width: 2,
                        color: Colors.green,
                      ),
                      bottom: BorderSide(
                        width: 2,
                        color: Colors.green,
                        ),
                        )
                    ),
                  child: Text('Você foi tão bem quanto o "Rolo Compressor", apelido da equipe do Internacional' +
                  ' no ano de 1979, único CAMPEÃO BRASILEIRO INVICTO!!',
                    style: TextStyle(
                    fontSize: 16,
                    //fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Arial',
                    decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),
                  ),

            Divider(
              height: 20,
              color: Colors.transparent,
            ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(
                      width: 2,
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  child: Column(
                    children: [
                      Text('CURIOSIDADE:\n\n' +
                  ' Você Sabia?\n$texto',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.none,
                    fontFamily: 'Arial',
                  ),
                  ),
                    ],
                  )
                  
                )
                ],
              ),
            ),
           );
        }
      }
      
