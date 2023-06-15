import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final optionsMenu = const ['Página 1', 'Página 2', 'Página 3'];

  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //barra del menu superior
          backgroundColor: const Color.fromARGB(255, 54, 244, 181),
          title: const Text('Menu'),
          elevation: 10.0, //darle sombra a la bara del menu
        ),
        //Listview nos permite crear varios elementos y mostrarlos en forma de lista
        body: ListView.separated(
            // context, que es la información ee nuestro contexto y el index
            //que es la petición que actualmente está iterando sobre los elementos de nuestro listado

            itemBuilder: (context, index) => ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  title: Text(optionsMenu[index]),
                  onTap: () {
                    final menu = optionsMenu[index];
                    print(menu);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: optionsMenu
                .length) //Número de elementos que tenemos en la lista

        //widget de opciones de menú.ListTile permite utilizar varios widgets, como por ejemplo: leading.
        //Un caso típico es utilizar el leading para colocar un icono
        /*  ListTile(
              leading: Icon(Icons.access_time_sharp),
              title: Text('Página 1'),
            ),
           */

        );
  }
}
