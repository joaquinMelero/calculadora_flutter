//Centralizar rutas de la app.clase pública en la que vamos a definir un string
//estático para initialRoute

import 'package:calculadora/models/models.dart';
import 'package:calculadora/screens/card_screen.dart';
import 'package:calculadora/screens/home_screen.dart';
import 'package:calculadora/screens/listview1_screen.dart';
import 'package:flutter/material.dart';
import '../screens/index_screen.dart';
import 'package:calculadora/models/models.dart';

class AppRoutes {
  static const initialRoute = 'index';

  //opciones del menú
  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: 'index',
        icon: Icons.home_max_sharp,
        name: 'Index Screen',
        screen: const IndexScreen()),
    MenuOption(
        route: 'home',
        icon: Icons.calculate_outlined,
        name: 'Calculadora',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'lista 1',
        screen: const Listview1Screen()),
  ]; //listado de la clase MenuOption:

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //mapa que reciba como argumentos un string y un widget
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    //bucle for que recorra todas las opciones que tenemos en el menú
    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
}
