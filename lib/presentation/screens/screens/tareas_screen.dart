import 'package:flutter/material.dart';
import 'package:flutter_laboratorio1_programovil/presentation/screens/screens/home/widgets/menu_drawer.dart';
import 'package:go_router/go_router.dart';

class TareasScreen extends StatelessWidget {
  const TareasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tareas '),
      ),
      drawer: const MenuDrawer(), // Agrega el menú lateral
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          // Aquí se muestran las tareas con el widget ListTareas
          ListTareas(
            nombre: 'Programación Movil',
            descripcion: 'Entrega de sprint 2',
            fecha: '11-02-2024',
            url: 'https://portal.unitec.edu/',
          ),
          SizedBox(height: 16.0), // Espacio entre las tarjetas
          ListTareas(
            nombre: 'Inglés IV',
            descripcion: 'Interview',
            fecha: '18-02-2024',
            url: 'https://portal.unitec.edu/',
          ),
          SizedBox(height: 16.0), // Espacio entre las tarjetas
          ListTareas(
            nombre: 'Quiz de progrmacion',
            descripcion: 'Completar quiz de programacion',
            fecha: '15-02-2024',
            url: 'https://quizizz.com/admin/quiz/58d305eeeb4adc4e03b57224/programacion',
          ),
          SizedBox(height: 16.0), // Espacio entre las tarjetas
          ListTareas(
            nombre: 'Examen Sistemas de Inovacion y Tecnologia',
            descripcion: 'Estudiar temas de semana 3-5',
            fecha: '18-02-2024',
            url: 'https://portal.unitec.edu/',
          ),
          
        ],
      ),
    );
  }
}

class ListTareas extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String fecha;
  final String url;

  const ListTareas({
    required this.nombre,
    required this.descripcion,
    required this.fecha,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              nombre,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Cambiar el color del texto del nombre
              ),
            ),
            Row(
              children: [
                const Icon(Icons.calendar_today_rounded, color: Colors.red), // Icono de fecha
                SizedBox(width: 4.0), // Espacio entre el icono y el texto de la fecha
                Text(
                  fecha,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.red, // Cambiar el color del texto de la fecha
                  ),
                ),
                const SizedBox(width: 4.0), // Espacio entre la fecha y el icono del enlace
                Icon(Icons.link_rounded, color: Colors.blue), // Icono de enlace
              ],
            ),
          ],
        ),
        const SizedBox(height: 8.0), // Espacio entre el título y la descripción
        Text(
          descripcion,
          style: const TextStyle(fontSize: 16.0),
        ),
        const SizedBox(height: 16.0), // Espacio entre la descripción y el icono de estrella
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.star_rounded, color: Colors.orange), // Icono de estrella
          ],
        ),
        const Divider(color: Colors.black), // Línea divisora negra
      ],
    );
  }
}
