//menu de opciones

import 'package:flutter/material.dart';

class MenuOption {
  final String route; //ruta a la que queremos ir
  final IconData icon; //El icono que va a tener
  final String name; //nombre de la ruta que queremos que se muestre en el menú.
  final Widget screen;

//constructor. para que no tengan que enviarse en orden posicional llaves
  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen}); //La pantalla que queremos mostrar
}
