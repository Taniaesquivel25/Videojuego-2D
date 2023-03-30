import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pruebasnav/auth.dart';
import 'dart:ffi';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Future<void> signOut() async {
  await Auth().signOut();
}

final ButtonStyle btnColores = ElevatedButton.styleFrom(
  textStyle: const TextStyle(fontSize: 25),
  primary: Colors.green, //color del btn
  onPrimary: Colors.white, //color del texto del btn
  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 13), //Ancho y Alto
);
//ESTILO BOTON NUMEROS
final ButtonStyle btnNumeros = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 25),
    primary: Colors.pink, //color del btn
    onPrimary: Colors.white, //color del texto del btn
    padding: EdgeInsets.symmetric(horizontal: 57, vertical: 13) //Ancho y Alto
    );
//ESTILO BOTON LETRAS
final ButtonStyle btnLetras = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 25),
    primary: Colors.purple, //color del btn
    onPrimary: Colors.white, //color del texto del btn);
    padding: EdgeInsets.symmetric(horizontal: 76, vertical: 13) //Ancho y Alto
    );
//ESTILO BOTON ANIMALES
final ButtonStyle btnAnimales = ElevatedButton.styleFrom(
  textStyle: const TextStyle(fontSize: 25),
  primary: Colors.orange, //color del btn
  onPrimary: Colors.white, //color del texto del btn);
  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 13), //Ancho y Alto
);
//ESTILO BOTON PRACTICA
final ButtonStyle btnPractica = ElevatedButton.styleFrom(
  textStyle: const TextStyle(fontSize: 25),
  primary: Colors.blue, //color del btn
  onPrimary: Colors.white, //color del texto del btn);
  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 13), //Ancho y Alto
);

//ESTILO BOTON SALIR
final ButtonStyle btnSalir = ElevatedButton.styleFrom(
  textStyle: const TextStyle(fontSize: 25),
  primary: Colors.red, //color del btn
  onPrimary: Colors.white, //color del texto del btn);
  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14), //Ancho y Alto
);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Menu Principal'),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor:
            Color.fromARGB(255, 255, 255, 255), //CAMBIO DE COLORE DE FONDO

        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
//Primera Columna
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(
                      height:
                          50), //Separacion entre el texto superior y la imagen

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      //BOTON COLORES
                      ElevatedButton(
                        style: btnColores,
                        onPressed: () {},
                        child: const Text('COLORES'),
                      ),

                      //BOTON PRACTICA
                      ElevatedButton(
                        style: btnPractica,
                        onPressed: () {
                          //Ruta establecida en Main
                          Navigator.pushReplacementNamed(context,
                              'Rojo'); //Manda a llamar la pantalla con la ruta Practica del main
                        },
                        child: const Text('P'),
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
                      //BOTON NUMEROS
                      ElevatedButton(
                        style: btnNumeros,
                        onPressed: () {},
                        child: const Text('NUMEROS'),
                      ),
                      //BOTON PRACTICA
                      ElevatedButton(
                        style: btnPractica,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context,
                              'Cero'); //Manda a llamar la pantalla con la ruta Practica del main
                        },
                        child: const Text('P'),
                      ),
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
                      //BOTON LETRAS
                      ElevatedButton(
                        style: btnLetras,
                        onPressed: () {},
                        child: const Text('LETRAS'),
                      ),
                      //BOTON PRACTICA
                      ElevatedButton(
                        style: btnPractica,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context,
                              'A'); //Manda a llamar la pantalla con la ruta Practica del main
                        },
                        child: const Text('P'),
                      ),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 40), //SEPARA BOTONES CON ESPACIO

//Cuarta Columna
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //BOTON ANIMALES
                      ElevatedButton(
                        style: btnAnimales,
                        onPressed: () {},
                        child: const Text('ANIMALES'),
                      ),
                      //BOTON PRACTICA
                      ElevatedButton(
                        style: btnPractica,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context,
                              'Gato'); //Manda a llamar la pantalla con la ruta Practica del main
                        },
                        child: const Text('P'),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 100),
//Quinta Columna
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ElevatedButton(
                        style: btnSalir,
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                          Navigator.pushReplacementNamed(context,
                              'widgettree'); //Manda a llamar la pantalla de regreso con la ruta Practica del main
                        },
                        child: const Text('SALIR'),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
