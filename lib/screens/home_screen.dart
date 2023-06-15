import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String num = ""; //guarda el primer número pulsado
  double num2 = 0; //guarda el segundo numero pulsado
  String no_num = ""; //guardo la operacion
  double result = 0; //guarda el result de las operaciones

  //método mostrar la tecla pulsada
  // ignore: non_constant_identifier_names
  void tecla_pulsada(String tecla) {
    num = "${num + tecla}";

    setState(() {});
  }

  //método para cambiar la pantalla

//coge el valor de num y va acumulando y sumando
  suma() {
    //solo suma si es un número
    num2 = double.parse(num);

    //num2 += num2;

    num = "+";

    setState(() {});
  }

  //tecla igual. Cuando se pulsa muestra el resultado devuelto de los métodos de operaciones
  //dependiendo de la tecla pulsada devuelve uno u otro
  resultado() {
    no_num = num.substring(0, 1); //guarto el tipo de operación
    num = num.substring(1); //guardo solo en número del segundo operando

    double num1 = double.parse(num); //paso a double

    switch (no_num) {
      case '+':
        {
          result = num2 + num1;
          num = result.toString();
        }
    }

    setState(() {});
  }

//función que muestra los números en pantalla
  mostrar_num() {
    //return num = num;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //contenedor principal
      appBar: AppBar(
        //barra del menu superior
        backgroundColor: const Color.fromRGBO(244, 67, 54, 1),
        title: const Text('Calculadora'),
        elevation: 10.0, //darle sombra a la bara del menu
      ),

      //contenedor principal
      body: Center(
        child: Column(
          children: [
            //contenedor para la pantalla
            Container(
              //adaptar el tamaño relativamente
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 170, 213, 253),
                borderRadius: BorderRadius.circular(50),
              ),
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                num,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            //contenedor para las teclas
            Container(
                color: const Color.fromARGB(255, 170, 213, 253),
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.66,
                width: MediaQuery.of(context).size.width * 0.9,
                child: grid_teclas())
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  GridView grid_teclas() {
    return GridView.count(
      padding: const EdgeInsets.all(5),
      crossAxisSpacing: 5,
      mainAxisSpacing: 0,
      crossAxisCount: 4,
      children: <Widget>[
        tecla_num('%'),
        tecla_C('CE'),
        tecla_C('C'),
        tecla_num('<-'),
        tecla_num('1/x'),
        tecla_num('x2'),
        tecla_num(' √x'),
        tecla_num('/'),
        tecla_num('7'),
        tecla_num('8'),
        tecla_num('9'),
        tecla_num('x'),
        tecla_num('4'),
        tecla_num('5'),
        tecla_num('6'),
        tecla_num('-'),
        tecla_num('1'),
        tecla_num('2'),
        tecla_num('3'),
        tecla_mas('+'),
        tecla_num('+/-'),
        tecla_num('0'),
        tecla_num(','),
        tecla_igual('='),
      ],
    );
  }

//contenedor y funcionalidad para las teclas numericas
  // ignore: non_constant_identifier_names
  Container tecla_num(String name) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        color: const Color.fromARGB(255, 170, 213, 253),
        child: ElevatedButton(
          onPressed: () {
            tecla_pulsada(name);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 204, 204, 204),
            padding:
                const EdgeInsets.only(top: 15, left: 5, right: 5, bottom: 15),
          ), //fin estilo boton
          child: Text(
            name,
            style: const TextStyle(fontSize: 30, color: Colors.black),
          ),
        ));
  }

//contenedor y funcionalidad para la tecla +
//guarda el primer numero, reinicia la pantalla, guarda el segundo, muestra el result
  // ignore: non_constant_identifier_names
  Container tecla_mas(String name) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        color: const Color.fromARGB(255, 170, 213, 253),
        child: ElevatedButton(
          onPressed: () {
            num = suma();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 204, 204, 204),
            padding:
                const EdgeInsets.only(top: 15, left: 5, right: 5, bottom: 15),
          ), //fin estilo boton
          child: Text(
            name,
            style: const TextStyle(fontSize: 30, color: Colors.black),
          ),
        ));
  }

  //contenedor y funcionalidad para la tecla =
  // ignore: non_constant_identifier_names
  Container tecla_igual(String name) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        color: const Color.fromARGB(255, 170, 213, 253),
        child: ElevatedButton(
          onPressed: () {
            resultado();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            padding:
                const EdgeInsets.only(top: 15, left: 5, right: 5, bottom: 15),
          ), //fin estilo boton
          child: Text(
            name,
            style: const TextStyle(
                fontSize: 40, color: Color.fromARGB(255, 35, 49, 241)),
          ),
        ));
  }

//contenedor y funcionalidad para la tecla CE, C
  // ignore: non_constant_identifier_names
  Container tecla_C(String name) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        color: const Color.fromARGB(255, 170, 213, 253),
        child: ElevatedButton(
          onPressed: () {
            num = "";
            setState(() {});
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 204, 204, 204),
            padding:
                const EdgeInsets.only(top: 15, left: 5, right: 5, bottom: 15),
          ), //fin estilo boton
          child: Text(
            name,
            style: const TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 231, 53, 53)),
          ),
        ));
  }
}
