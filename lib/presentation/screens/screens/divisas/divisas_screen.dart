import 'package:flutter/material.dart';

class CambioDivisasScreen extends StatelessWidget {
  const CambioDivisasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de Divisas'),
      ),
      body: const Center(
        child: Text('Pantalla de Cambio de Divisas'),
      ),
    );
  }
}
