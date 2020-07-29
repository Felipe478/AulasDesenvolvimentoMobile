import 'package:flutter/material.dart';

      class MyHomePage extends StatefulWidget {
        @override
        _MyHomePageState createState() => _MyHomePageState();
      }
      
      class _MyHomePageState extends State<MyHomePage> {

        TextEditingController _primeiro_valor = TextEditingController(); 
        TextEditingController _segundo_valor = TextEditingController(); 
        var resultado;

        @override
        void initState() {
        super.initState();
        resultado = 'Resultado da Operação: ';
        }

        @override
        Widget build(BuildContext context) {
          return Scaffold(

            appBar: AppBar(
              title: Container(
                alignment: Alignment.centerRight,
                child: Text('Operações',),
                ),
              //centerTitle: true,
            ),
          
          body: SingleChildScrollView(
            child:pagina()
          ),
          
          floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.call_made),
          onPressed: () {
              }
          ),
          );

        }  
         
         Container pagina() {
            return Container (
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.orange,  
            child: Column(
              children: <Widget>[
                Container(
                alignment: Alignment.center,
                color: Colors.lightBlueAccent,
                width: MediaQuery.of(context).size.width,
                height: 80.0,

                child: Text("AULA DE TESTE", 
                style: TextStyle(fontSize: 35.0,
                 fontStyle: FontStyle.italic, 
                 color: Colors.yellow,
                 decoration: TextDecoration.underline,
                 fontFamily: 'Times New Roman',
                )
                 ),
                ),

                Container(
                  color: Colors.red,
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column (
                    children: <Widget>[

                      Divider(
                        height: 15.0,
                        color: Colors.transparent,
                      ),

                      TextField(
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                        controller: _primeiro_valor,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Digite o Primeiro Número',
                          labelStyle: TextStyle(fontSize: 25.0, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                          )
                        ),
                      ),

                    Divider(
                      height: 15.0,
                      color: Colors.transparent,
                    ),

                    TextField(
                        controller: _segundo_valor,
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Digite o Segundo Número',
                          labelStyle: TextStyle(fontSize: 25.0, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                          )
                        ),
                      ),

                      Divider(
                      height: 15.0,
                      color: Colors.transparent,
                    ),

                      Text(resultado)
                    ],
                  )

                ),

                   Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                   child:  
                   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: 
                    ButtonTheme(
                      minWidth: 150.0,
                      child: RaisedButton(
                  color: Colors.grey,
                  child: Text('Adição'),                  
                  onPressed: (){
                    setState(() {
                      resultado = int.parse(_primeiro_valor.text) + int.parse(_segundo_valor.text);
                      resultado = 'O Resultado da Soma é: $resultado';
                    }
                    );
                }
                ),
                    ),
                    ),

                    ButtonTheme(minWidth: 150.0,
                    child: RaisedButton(
                  color: Colors.grey,
                  child: Text('Subtração'),
                  onPressed: (){
                   setState(() {
                     resultado = int.parse(_primeiro_valor.text) - int.parse(_segundo_valor.text);
                      resultado = 'O Resultado da Subtração é: $resultado';
                    });   
                }
                ),
                ),
                  ],
                ),
                ),

               
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 15.0, right: 15.0), 
                      child:
                      ButtonTheme(
                    minWidth: 150.0,

                    child: RaisedButton(
                    color: Colors.grey,
                    child: Text('Multiplicação'),
                    onPressed: (){
                    setState(() {
                      resultado = int.parse(_primeiro_valor.text) * int.parse(_segundo_valor.text);
                      resultado = 'O Resultado da Multiplicação é: $resultado';
                    });
                }
                ),
                  ),
                      ),
                ButtonTheme(
                  minWidth: 150.0,
                child: RaisedButton(
                  color: Colors.grey,
                  child: Text('Divisão'),
                  onPressed: (){
                    setState(() {
                      resultado = int.parse(_primeiro_valor.text) / int.parse(_segundo_valor.text);
                      resultado = 'O Resultado da Divisão é: $resultado';
                    });
                }
                ),
                ),
                  ]),
                  ],
                    ),
                );
          }
      }     
          
