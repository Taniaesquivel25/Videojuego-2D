import 'package:pruebasnav/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pruebasnav/rutas/screens-animales.dart'; //Se importan las pantallas exportadas del screen.dart como tal de las pantallas
import 'package:pruebasnav/rutas/screens-colores.dart';
import 'package:pruebasnav/rutas/screens-letras.dart';
import 'package:pruebasnav/rutas/screens-menu.dart';
import 'package:pruebasnav/rutas/screens-numeros.dart';
import 'package:pruebasnav/widget_tree.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'widgettree': (_) => WidgetTree(),
        //ruta            //StateFulwidget
        'Home': (_) => HomePage(), //Nuestra ruta del Menu
        //Rutas Colores Paractica
        'Rojo': (_) => const Rojo(), //Muestra la ruta dela Practica Rojo
        'Rosa': (_) => const Rosa(), //Muestra la ruta dela Practica Rosa
        'Salmon': (_) => const Salmon(), //Muestra la ruta dela Practica Salmon
        'Verde': (_) => const Verde(), //Muestra la ruta dela Practica Verde
        'Azul': (_) => const Azul(), //Muestra la ruta dela Practica Azul
        //Rutas Numeros Paractica
        'Cero': (_) => const Numerocero(), //Muestra la ruta dela Practica 0
        'Uno': (_) => const Numerouno(), //Muestra la ruta dela Practica 1
        'Dos': (_) => const Numerodos(), //Muestra la ruta dela Practica 2
        'Tres': (_) => const Numerotres(), //Muestra la ruta dela Practica 3
        'Cuatro': (_) => const Numerocuatro(), //Muestra la ruta dela Practica 4
        'Cinco': (_) => const Numerocinco(), //Muestra la ruta dela Practica 5
        'Seis': (_) => const Numeroseis(), //Muestra la ruta dela Practica 6
        'Siete': (_) => const Numerosiete(), //Muestra la ruta dela Practica 7
        'Ocho': (_) => const Numeroocho(), //Muestra la ruta dela Practica 8
        'Nueve': (_) => const Numeronueve(), //Muestra la ruta dela Practica 9
        //Rutas Letras Paractica
        'A': (_) => const Letraa(), //Muestra la ruta dela Practica A
        'E': (_) => const Letrab(), //Muestra la ruta dela Practica E
        'I': (_) => const Letrai(), //Muestra la ruta dela Practica I
        'O': (_) => const Letrao(), //Muestra la ruta dela Practica O
        'U': (_) => const Letrau(), //Muestra la ruta dela Practica O
        //Rutas Animales Paractica
        'Gato': (_) => const Animalgato(), //Muestra la ruta dela Practica gato
        'Vaca': (_) => const Animalvaca(), //Muestra la ruta dela Practica vaca
        'Perro': (_) =>
            const Animalperro(), //Muestra la ruta dela Practica perro
        'Gallina': (_) =>
            const Animalgallina(), //Muestra la ruta dela Practica gallina
        'Cerdo': (_) =>
            const Animalcerdo(), //Muestra la ruta dela Practica cerdo
      },
      initialRoute: 'widgettree', // Nuestra ruta de la pantalla inicial
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.grey,
        useMaterial3: true,
      ),
      home: const WidgetTree(),
    );
  }
}
