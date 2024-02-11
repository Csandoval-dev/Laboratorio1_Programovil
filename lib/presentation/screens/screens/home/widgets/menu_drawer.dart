import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'App Ceutec',
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home), // Icono para Home
            title: const Text('Home'),
            onTap: () => GoRouter.of(context).go('/'),
          ),
          ListTile(
            leading: Icon(Icons.article), // Icono para Noticias
            title: const Text('Noticias'),
            onTap: () => GoRouter.of(context).go('/noticias'),
          ),
          ListTile(
             leading: Icon(Icons.assignment), // Icono para Lista de Tareas
            title: const Text('Lista de Tareas'),
            onTap: () => GoRouter.of(context).go('/tareas'),
          ),
          ListTile(
            leading: Icon(Icons.attach_money), // Icono para Cambio de Monedas
            title: const Text('Cambio de Monedas'),
            onTap: () => GoRouter.of(context).go('/divisas'),
          ),
             ListTile(
              leading: Icon(Icons.headset), // Icono para Podcast
            title: const Text('Podcast'),
            onTap: () => GoRouter.of(context).go('/podcast'),
          ),
        ],
      ),
    );
  }
}
