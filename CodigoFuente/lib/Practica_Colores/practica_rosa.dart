import 'package:flutter/material.dart';



class Rosa extends StatefulWidget { //Se le cambia el nombre a nuestro stateFulwidget para mandarlo a llamar en nuestras rutas en este caso PRACTICA()
  const Rosa({super.key});

  @override
  State<Rosa> createState() => _RosatState();
}

class _RosatState extends State<Rosa> {
      //ESTILO BOTON ANTERIOR
    final ButtonStyle btnAnterior = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 25),
      primary: Colors.blue, //color del btn
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
            title: Text('Practica Colores'),
            backgroundColor: Color.fromARGB(255, 255, 19, 192),
            
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
                    'COLOR "ROSA" ',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40, color: Color.fromARGB(255, 255, 19, 192)),
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
                  'assets/practica-colores/rosa.png'), //Manda a llamara la imagen de la carpeta assets
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
                    style: btnAnterior,
                    onPressed: () {
                       Navigator.pushReplacementNamed( context, 'Rojo' ); //Manda a llamar la pantalla de regreso con la ruta Home del main
                    },
                    child: const Text('ANTERIOR'),//Boton izquierdo
                  ),
                  //BOTON Siguiente
                  ElevatedButton(
                    style: btnSiguiente,
                    onPressed: () {

                        Navigator.pushReplacementNamed( context, 'Salmon' ); //Manda a llamar la pantalla con la ruta ROSA del main
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