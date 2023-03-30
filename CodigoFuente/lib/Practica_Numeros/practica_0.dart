import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pruebasnav/auth.dart';

class Numerocero extends StatefulWidget { //Se le cambia el nombre a nuestro stateFulwidget para mandarlo a llamar en nuestras rutas en este caso PRACTICA()
  const Numerocero ({super.key});

  @override
  State<Numerocero> createState() => _NumerocerotState();
}

class _NumerocerotState extends State<Numerocero> {

    //ESTILO BOTON ANTERIOR
    final ButtonStyle btnMenuPrincipal = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 25),
      primary: Color.fromARGB(255, 243, 33, 33), //color del btn
      onPrimary: Colors.white, //color del texto del btn
      padding:
           EdgeInsets.symmetric(horizontal: 17, vertical: 13), //Ancho y Alto
    );
    //ESTILO BOTON SIGUIENTE
    final ButtonStyle btnSiguiente = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 25),
        primary: Colors.green, //color del btn
        onPrimary: Colors.white, //color del texto del btn
        padding:
            EdgeInsets.symmetric(horizontal: 17, vertical: 13) //Ancho y Alto
        );

  @override
  Widget build(BuildContext context) {


         return Scaffold(
      appBar: AppBar(
         centerTitle: true,
            title: Text('Practica Numeros'),
            backgroundColor: Color.fromARGB(204, 150, 20, 94),
            
      ),
       backgroundColor:
              Color.fromARGB(255, 255, 255, 255), //CAMBIO DE COLORE DE FONDO
              
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding:  const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
//Primera Columna
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
                      const SizedBox(
              height: 50), //Separacion entre el texto superior y la imagen

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    //Estilo y Textosuperior
                   'NUMERO "CERO" ',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40, color:Color.fromARGB(204, 150, 20, 94),
            ),
                  ),
                ],
              )
            ],
          ),

          const SizedBox(height: 40), //SEPARA BOTONES CON ESPACIO

//Segunda Columna
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                  'assets/practica-numeros/numero-0.png'), //Manda a llamara la imagen de la carpeta assets
                ],
              )
            ],
          ),

          const SizedBox(height: 40), //SEPARA BOTONES CON ESPACIO

//Tercera Columna
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //BOTON Anterior
                  ElevatedButton(
                    style: btnMenuPrincipal,
                    onPressed: () {
                     
                    Navigator.pushReplacementNamed( context, 'widgettree' ); //Manda a llamar la pantalla de regreso con la ruta Practica del main


                    },
                    child: const Text('ANTERIOR'),//Boton izquierdo
                  ),
                  //BOTON Siguiente
                  ElevatedButton(
                    style: btnSiguiente,
                    onPressed: () {

                  
                      Navigator.pushReplacementNamed( context, 'Uno' ); //Manda a llamar la pantalla de regreso con la ruta Practica del main
                    },
                    child: const Text('SIGUIENTE'),//Boton derecho
                  ),
                ],
              )
            ],
          ),
  ])));
  }
} 