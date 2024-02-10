import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
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
            title: Text('Home'),
            onTap: () => GoRouter.of(context).go('/'),
          ),
          ListTile(
            title: Text('Noticias'),
            onTap: () => GoRouter.of(context).go('/noticias'),
          ),
          ListTile(
            title: Text('Tareas'),
            onTap: () => GoRouter.of(context).go('/tareas'),
          ),
          ListTile(
            title: Text('Cambio de Divisas'),
            onTap: () => GoRouter.of(context).go('/cambio_divisas'),
          ),
        ],
      ),
    );
  }
}
