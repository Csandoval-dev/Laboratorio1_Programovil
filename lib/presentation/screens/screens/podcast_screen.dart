import 'package:flutter/material.dart';
import 'package:flutter_laboratorio1_programovil/presentation/screens/screens/home/widgets/menu_drawer.dart';

class PodcastPlayerScreen extends StatelessWidget {
  const PodcastPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reproductor de Podcast'),
        
      ),
      drawer: const MenuDrawer(), // Agregar el menú lateral
      backgroundColor: Colors.grey[900], // Cambia el color de fondo a gris oscuro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
           
            ),
            const SizedBox(height: 20),
            const Text(
              'Nombre del Podcast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Espacia los botones uniformemente
              children: [
                IconButton(
                  icon: const Icon(Icons.fast_rewind),
                  iconSize: 48, // Aumenta el tamaño del icono
                  onPressed: () {
                    // Implementar lógica para retroceder el podcast
                  },
                  color: Colors.white,
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  iconSize: 64, // Aumenta el tamaño del icono
                  onPressed: () {
                    // Implementar lógica para reproducir/pausar el podcast
                  },
                  color: Colors.white,
                ),
                IconButton(
                  icon: const Icon(Icons.fast_forward),
                  iconSize: 48, // Aumenta el tamaño del icono
                  onPressed: () {
                    // Implementar lógica para avanzar el podcast
                  },
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Slider(
              value: 0.5, // Valor de ejemplo, manejar el progreso real
              onChanged: (newValue) {
                // Implementar lógica para controlar el progreso de reproducción
              },
              activeColor: Colors.blue, // Cambia el color de la parte activa del slider
              inactiveColor: Colors.grey, // Cambia el color de la parte inactiva del slider
            ),
          ],
        ),
      ),
    );
  }
}
