import 'package:flutter/material.dart';



class Animalgato extends StatefulWidget { //Se le cambia el nombre a nuestro stateFulwidget para mandarlo a llamar en nuestras rutas en este caso PRACTICA()
  const Animalgato({super.key});

  @override
  State<Animalgato> createState() => _AnimalgatotState();
}

class _AnimalgatotState extends State<Animalgato> {

    //ESTILO BOTON ANTERIOR
    final ButtonStyle btnMenuPrincipal = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 25),
      primary: Color.fromARGB(255, 245, 2, 2), //color del btn
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
            title: Text('Practica Animales'),
            backgroundColor: Color.fromARGB(255, 206, 161, 12),
            
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
                   'ANIMAL "GATO" ',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40, color:Color.fromARGB(255, 206, 161, 12)),
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
                  'assets/practica-animales/animal-gato.png'), //Manda a llamara la imagen de la carpeta assets
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
                    style:  btnMenuPrincipal,
                    onPressed: () {
                     
                    Navigator.pushReplacementNamed( context, 'Home' ); //Manda a llamar la pantalla de regreso con la ruta Practica del main


                    },
                    child: const Text('ANTERIOR'),//Boton izquierdo
                  ),
                  //BOTON Siguiente
                  ElevatedButton(
                    style: btnSiguiente,
                    onPressed: () {

                    Navigator.pushReplacementNamed( context, 'Vaca' ); //Manda a llamar la pantalla de regreso con la ruta Practica del main
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