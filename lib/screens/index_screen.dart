import 'package:calculadora/router/app_routes.dart';
import 'package:calculadora/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('☰ App Calculadora'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: Icon(AppRoutes.MenuOptions[index].icon),
            title: Text(AppRoutes.MenuOptions[index].name),
            onTap: () {
              //Navigator para navegar a una pantalla nueva
              final route = MaterialPageRoute(
                builder: (context) => const Listview1Screen(),
              );
              Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);
            },
          ),
          separatorBuilder: (context, index) => Divider(),
          itemCount: AppRoutes.MenuOptions.length,
        ));
  }
}
