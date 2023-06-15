import 'package:calculadora/router/app_routes.dart';
import 'package:calculadora/screens/card_screen.dart';
import 'package:calculadora/screens/home_screen.dart';
import 'package:calculadora/screens/index_screen.dart';
import 'package:calculadora/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp_calculadora());
}

//widget o clase principal
// ignore: camel_case_types
class MyApp_calculadora extends StatelessWidget {
  const MyApp_calculadora({super.key});

  @override

  /*
  BuildContext es una descripción de la posición del widget en el árbol de
   widgets y además trae muchisima mas informacion sobre el elemento que 
   estamos renderizando, como el estado, tipo de widget, etc
  */
  Widget build(BuildContext context) {
    //MaterialApp es un widget que nos proporciona un layout orientado a Material Design.
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //quitar etiqueta superior derecha debug
      title: 'App calculadora',
      //home: const Listview1Screen(),
      initialRoute: AppRoutes.initialRoute, //refencia a la clase
      routes: AppRoutes.getAppRoutes(),
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 112, 238, 217),
          elevation: 10,
        ),
        primaryColor: Color.fromARGB(255, 109, 211, 236),
      ),
    );
  }
}
