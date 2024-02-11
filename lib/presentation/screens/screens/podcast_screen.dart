import 'package:flutter/material.dart';

class PodcastPlayerScreen extends StatelessWidget {
  const PodcastPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reproductor de Podcast'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const SizedBox(height: 20),
            const Text(
              'Nombre del Podcast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.fast_rewind),
                  onPressed: () {
                    // Implementar lógica para retroceder el podcast
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  onPressed: () {
                    // Implementar lógica para reproducir/pausar el podcast
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.fast_forward),
                  onPressed: () {
                    // Implementar lógica para avanzar el podcast
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Slider(
              value: 0.5, // Valor de ejemplo,  manejar el progreso real
              onChanged: (newValue) {
                // Implementar lógica para controlar el progreso de reproducción
              },
            ),
          ],
        ),
      ),
    );
  }
}
