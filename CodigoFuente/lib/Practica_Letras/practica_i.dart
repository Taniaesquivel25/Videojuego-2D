import 'package:flutter/material.dart';



class Letrai extends StatefulWidget { //Se le cambia el nombre a nuestro stateFulwidget para mandarlo a llamar en nuestras rutas en este caso PRACTICA()
  const Letrai ({super.key});

  @override
  State<Letrai> createState() => _LetraitState();
}

class _LetraitState extends State<Letrai> {

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
            title: Text('Practica Vocales'),
            backgroundColor: Color.fromARGB(204, 255, 0, 230),
            
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
                   'LETRA "I" ',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40, color:Color.fromARGB(204, 255, 0, 230)),
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
                  'assets/practica-letras/letra-i.png'), //Manda a llamara la imagen de la carpeta assets
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
                    style:  btnAnterior,
                    onPressed: () {
                     
                    Navigator.pushReplacementNamed(  context, 'E'  ); //Manda a llamar la pantalla de regreso con la ruta Practica del main


                    },
                    child: const Text('ANTERIOR'),//Boton izquierdo
                  ),
                  //BOTON Siguiente
                  ElevatedButton(
                    style: btnSiguiente,
                    onPressed: () {

                    Navigator.pushReplacementNamed(context, 'O'); //Manda a llamar la pantalla de regreso con la ruta Practica del main
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