import 'package:flutter/material.dart';
import 'widgets/menu_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programacion Movil', textAlign: TextAlign.center),
       backgroundColor: Colors.blue, // Color de fondo de la AppBar
       
      ),
      drawer: const MenuDrawer(), // Agregar el MenuDrawer como el drawer
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '',
              style: TextStyle(fontSize: 24),
            ),
            
          ],
        ),
      ),
    );
  }
}
