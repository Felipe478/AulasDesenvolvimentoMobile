import 'package:flutter/material.dart';

class CalculadoraIMC extends StatefulWidget {
  @override
  _CalculadoraIMCState createState() => _CalculadoraIMCState();
}

class _CalculadoraIMCState extends State<CalculadoraIMC> {

        TextEditingController _altura = TextEditingController(); 
        TextEditingController _peso = TextEditingController(); 
        
        var imc;
        String _fraseIMC = '';

        AssetImage foto = AssetImage('imagens/Corpo.png');

        @override
        void initState() {
        super.initState();
        imc = 'Condição: ';
        }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
      title: Center(
        child: Text('Calculadora IMC',),
      ),
      ),

      body: pagina()
                    );                            
}
        
        pagina() {
          return Container (
          color: Colors.pink,
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:

            SingleChildScrollView(             
              child: Column(
                children: <Widget>[

                  Divider(
                  height: 10,
                  color: Colors.transparent,
                ),

                   Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                    ),
                    child: Text('Calculadora IMC',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.pink[300],
                      fontWeight: FontWeight.bold,
                    ),
                    ),  
                    ),

                    Divider(
                  height: 10,
                  color: Colors.transparent,
                ),

                Row (
                  children: <Widget>[
                  
                  Expanded(
                    child: TextField(
                      controller: _peso,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                      labelText: 'Digite seu peso...',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      )
                  ),
                    ),
                  ),

                  Expanded(
                    child: TextField(
                      controller: _altura,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                      labelText: 'Digite sua altura...',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      )                  
                        ),
                      ),
                  ),

                  ],
                ),

                Padding(
                  padding: 
                  const EdgeInsets.all(15.0),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Expanded(
                        child: RaisedButton(  
                        color: Colors.white,   
                               
                        onPressed: () {
                        setState(() {
                          imc = double.parse(_peso.text) / ((double.parse(_altura.text)) * (double.parse(_altura.text)));
                           
                          if(imc < 20.7) {
                            foto = AssetImage('imagens/Abaixo_Peso.png');                           
                            _fraseIMC =  ': Abaixo do Peso';
                          }
                          else if ((imc >= 20.7) && (imc <= 26.4)) {
                            foto = AssetImage('imagens/Peso_Normal.png');                            
                            _fraseIMC =  ': No Peso Normal';
                          }
                           else if ((imc > 26.4) && (imc <= 27.8)) {
                            foto = AssetImage('imagens/Marginalmente_Acima.png');                           
                            _fraseIMC =  ': Marginalmente acima do peso';
                          }
                           else if ((imc > 27.8) && (imc <= 31.1)) {
                            foto = AssetImage('imagens/Acima_Peso.png');                            
                            _fraseIMC =  ': Acima do peso ideal';
                          }
                           else if (imc > 31.1) {
                            foto = AssetImage('imagens/Obeso.png');                            
                             _fraseIMC =  ': Obeso';
                          }
                          imc = imc.toStringAsFixed(3);

                        });
                    },
                    
                    child: Text('Calcular', 
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 18,
                    ),),
                  ),
                      ),

                  ],
                  ),
                ),
                
                Image(
                image: foto, 
                height: 300,
                width: 400,
                fit: BoxFit.contain,
                ),

                Divider(
                  height: 10,
                  color: Colors.transparent,
                ),

                Text(imc.toString() + _fraseIMC,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                ),
        

                ],
                
              ),
            ),
         

          );
}

}