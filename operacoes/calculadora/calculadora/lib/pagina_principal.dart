
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {

  var tela;
  double num1, num2, conta;
  var operador = '', segundovalor='';

  @override
  void initState() {
  super.initState();
  tela = '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SingleChildScrollView(
        child: calculadora(),
      ),
      ]
    );
  }

calculadora() {
  return Container (
    color: Colors.grey,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    alignment: Alignment.center,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 380,
        alignment: Alignment.center,
        decoration: BoxDecoration(
        border: Border.all(width: 2,          
        ),
        borderRadius: BorderRadius.all(Radius.circular(6))
        ),
        child: 
        SingleChildScrollView(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blueAccent,
              width: MediaQuery.of(context).size.width,
              child: 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: 
                Column(
                children: <Widget>[
                  Text('Calculadora',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontFamily: 'Arial',
                    decoration: TextDecoration.none,
                  )
                  ,)
                ],
            ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                 color: Colors.white),
                 borderRadius: BorderRadius.all(Radius.circular(3))
              ),
              child: Text(tela.toString(),
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontFamily: 'Arial',
                ),
                textAlign: TextAlign.right,
                ),
            ),
            
          Container (
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child:RaisedButton(
                      padding:EdgeInsets.all(18),
                      onPressed: () {
                      setState(() {
                        tamanhotela('7');
                        testarNumero ('7');
                      });
                    },
                    color: Colors.blueAccent, 
                    child: Text('7',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                    ),
                    ),
                    Expanded(child: 
                    RaisedButton(
                      padding:EdgeInsets.all(18),
                      onPressed: () {
                      setState(() {
                         tamanhotela('8');
                        testarNumero ('8');
                      });
                    }, 
                    color: Colors.blueAccent, 
                    child: Text('8',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                    ),
                    ),
                    Expanded(child: 
                    RaisedButton(
                      padding:EdgeInsets.all(18),
                      onPressed: () {
                      setState(() {
                         tamanhotela('9');
                        testarNumero ('9');
                      });
                    }, 
                    color: Colors.blueAccent, 
                    child: Text('9',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                    ),
                    ),
                    Expanded(child: 
                    RaisedButton(
                      padding:EdgeInsets.all(18),
                      onPressed: () {
                      setState(() {
                        num1 = double.parse(tela);
                        tamanhotela('/');
                        operador = '/';
                      });
                    }, 
                    child: Text('/',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                    ),
                    )
                  ],
                ),
              ],
            ),
          ),

        Container(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
          child: Column(
            children: <Widget>[
              Row(
                  children: <Widget>[
                    Expanded(child: 
                    RaisedButton(
                      padding:EdgeInsets.all(18),
                      onPressed: () {
                      setState(() {
                         tamanhotela('4');
                        testarNumero ('4');
                      });
                    },
                    color: Colors.blueAccent, 
                    child: Text('4',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                    ),
                    ),
                    Expanded(child: 
                    RaisedButton(
                      padding:EdgeInsets.all(18),
                      onPressed: () {
                      setState(() {
                        tamanhotela('5');
                        testarNumero ('5');
                      });
                    }, 
                    color: Colors.blueAccent, 
                    child: Text('5', 
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                    ),
                    ),
                    Expanded(child: 
                    RaisedButton(
                      padding:EdgeInsets.all(18),
                      onPressed: () {
                      setState(() {
                        tamanhotela('6');
                        testarNumero ('6');
                      });
                    }, 
                    color: Colors.blueAccent, 
                    child: Text('6',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                    ),
                    ),
                    Expanded(child: 
                    RaisedButton(
                      padding:EdgeInsets.all(18),
                      onPressed: () {
                      setState(() {
                        num1 = double.parse(tela);
                         tamanhotela('*');
                        operador = '*';
                      });
                    }, 
                    child: Text('*', 
                    style: TextStyle(
                      fontSize: 17,
                    ),),
                    ),
                    )
                  ],
                ),
            ],
          ),
        ),

            Row(
              children: <Widget>[
                Expanded(child: 
                RaisedButton(
                  padding:EdgeInsets.all(18),
                  onPressed: () {
                  setState(() {
                     tamanhotela('1');
                    testarNumero ('1');
                  });
                },
                color: Colors.blueAccent, 
                child: Text('1', 
                style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                ),
                ),
                Expanded(child: 
                RaisedButton(
                  padding:EdgeInsets.all(18),
                  onPressed: () {
                  setState(() {
                     tamanhotela('2');
                    testarNumero ('2');
                  });
                }, 
                color: Colors.blueAccent, 
                child: Text('2', 
                style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                ),
                ),
                Expanded(child: 
                RaisedButton(
                  padding:EdgeInsets.all(18),
                  onPressed: () {
                  setState(() {
                    tamanhotela('3');
                    testarNumero ('3');
                  });
                }, 
                color: Colors.blueAccent, 
                child: Text('3',
                style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                ),
                ),
                Expanded(child: 
                RaisedButton(
                  padding:EdgeInsets.all(18),
                  onPressed: () {
                  setState(() {
                    if ((tela=='') || (operador!= '')) {
                      tamanhotela('-');
                      testarNumero('-');
                      } else {
                    num1 = double.parse(tela);
                    tamanhotela('-');
                    operador='-';
                    }
                  });
                }, 
                child: Text('-', 
                style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                ),
                )
              ],
            ),

             Row(
              children: <Widget>[
                Expanded(child: 
                RaisedButton(
                  padding:EdgeInsets.all(18),
                  onPressed: () {
                  setState(() {
                     tamanhotela('0');
                    testarNumero ('0');
                  });
                },
                color: Colors.blueAccent, 
                child: Text('0',
                style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                ),
                ),
                Expanded(child: 
                RaisedButton(
                  padding:EdgeInsets.all(18),
                  onPressed: () {
                  setState(() {
                  tamanhotela('.');
                  testarNumero('.');
                  });
                }, 
                color: Colors.blueAccent, 
                child: Text('.', 
                style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                ),
                ),
                Expanded(child: 
                RaisedButton(
                  padding:EdgeInsets.all(18),
                  onPressed: () {
                  setState(() {
                    print(num1);
                    print(num2);
                    print(operador);
                    num2 = double.parse(segundovalor);

                    if (operador == '+') {
                      conta = num1 + num2;
                    } else if (operador == '-') {
                      conta = num1 - num2;
                    } else if (operador == '*') {
                      conta = num1 * num2;
                    } else if (operador == '/') {
                        conta = num1 / num2;                      
                    }

                      tela = conta.toStringAsFixed(3);
                      num1 = double.parse(tela);
                      operador='';
                      segundovalor='';


                  });
                },  
                child: Text('=', 
                style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                ),
                ),
                Expanded(child: 
                RaisedButton(
                  padding:EdgeInsets.all(18),
                  onPressed: () {
                  setState(() {
                    num1 = double.parse(tela);
                     tamanhotela('+');
                    operador ='+';
                  });
                }, 
                child: Text('+', 
                style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                ),
                )
              ],
            ),

            Row (
              children: <Widget>[
                Expanded(child: 
                RaisedButton(
                  padding:EdgeInsets.all(18),
                  onPressed: () {
                    setState(() {
                  tela = '';
                  num1 = null;
                  num2 = null;
                  segundovalor = ''; 
                  operador = '';
                    });
                },
                child: Text('Limpar',
                ),
                )
                )
              ],
            )
          ],
        ),
        ),
      ),
    ),
  );
}

testarNumero (String numero) {
  if (operador != '') {
    segundovalor = segundovalor + numero;
  }
}

tamanhotela(String numero) {
  if (tela.toString().length <= 10) {
      tela = tela + numero;
  }
}

}