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
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () => GoRouter.of(context).go('/'),
          ),
          ListTile(
            title: const Text('Noticias'),
            onTap: () => GoRouter.of(context).go('/noticias'),
          ),
          ListTile(
            title: const Text('Lista de Tareas'),
            onTap: () => GoRouter.of(context).go('/tareas'),
          ),
          ListTile(
            title: const Text('Cambio de Monedas'),
            onTap: () => GoRouter.of(context).go('/divisas'),
          ),
        ],
      ),
    );
  }
}
