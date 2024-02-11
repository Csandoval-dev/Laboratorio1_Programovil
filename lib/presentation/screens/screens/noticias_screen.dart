import 'package:flutter/material.dart';
import 'package:flutter_laboratorio1_programovil/presentation/screens/screens/home/widgets/menu_drawer.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
      ),
      drawer: const MenuDrawer(), // Agregar el menú lateral
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          final noticia = noticias[index];
          return Container(
            color: Colors.white, // Fondo blanco para cada noticia
            padding: const EdgeInsets.symmetric(vertical: 1.0), // Añadir espacio vertical
            child: Card(
              elevation: 4,
              margin: const EdgeInsets.all(8),
              color: Colors.blue, // Color azul para el Card
              shape: RoundedRectangleBorder( // Bordes redondeados
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        noticia.imageUrl,
                        height: 200, // Altura fija para las imágenes
                        width: double.infinity, // Ancho máximo
                        fit: BoxFit.cover, // Ajustar la imagen para que cubra el contenedor
                      ),
                      Positioned(
                        top: 0, // Colocar el título arriba
                        child: Container(
                          color: Colors.black.withOpacity(0.5), // Fondo negro semitransparente para el título
                          width: MediaQuery.of(context).size.width, // Ancho máximo
                          padding: const EdgeInsets.symmetric(vertical: 8), // Espacio alrededor del título
                          child: Text(
                            noticia.title,
                            textAlign: TextAlign.center, // Centrar el título
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // Texto blanco para el título
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 2,
                    color: Colors.white, // Línea blanca
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      noticia.description,
                      style: const TextStyle(
                        color: Colors.white, // Texto blanco para la descripción
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Noticia {
  final String title;
  final String description;
  final String imageUrl;

  Noticia({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}


//Lista de Noticias
final List<Noticia> noticias = [
  Noticia(
    title: 'Ventajas de la educación técnica en el desarrollo profesional',
    description:
        'Las competencias técnicas son las habilidades que los miembros de un equipo de trabajo necesitan para realizar las tareas por las que han sido contratados. Puede tratarse de cualquier tarea, desde conocimientos de ingeniería, programación o configuración, hasta el manejo eficaz de los equipos, pasando por el uso de las herramientas de trabajo.',
    imageUrl:
        'https://ceutec.hn/wp-content/uploads/2024/02/1-ventajas-de-la-educacion-tecnica-en-el-desarrollo-profesional.jpg',
  ),
  Noticia(
    title: 'Desarrollo de Aplicaciones Web: ¿Cómo funciona?',
    description:
        'Primero debemos preguntarnos, ¿qué es el desarrollo de aplicaciones web? Se refiere al proceso de creación de aplicaciones de software a las que se puede acceder y utilizar a través de un navegador web o un dispositivo móvil. Los datos en este tipo de aplicaciones se almacenan en un servidor web o hosting en el que además de contener toda la información, luego la envía a distintos dispositivos con acceso web. Este factor hace que las webs sean muy prácticas, ya que no hay que descargar contenido previo para poder acceder a ellas.',
    imageUrl:
        'https://ceutec.hn/wp-content/uploads/2024/01/8-desarrollo-de-aplicaciones-web-como-funciona.jpg',
  ),
  Noticia(
    title: 'BECAS FUNDACIÓN NASSER-UNITEC|CEUTEC BENEFICIA A 100 JÓVENES MÁS PARA ESTUDIOS UNIVERSITARIOS',
    description: 'Fundación Nasser y la Universidad Tecnológica Centroamericana (UNITEC) continúan transformando cientos de vidas hondureñas mediante la entrega de 100 becas más para estudios universitarios, sumando a la fecha un total de 500 becas entregadas a jóvenes con excelencia académica y con notable liderazgo en las artes, el deporte, actividades de impacto social o proyectos de emprendimiento.',
    imageUrl: 'https://ceutec.hn/wp-content/uploads/2024/01/becas_nasser_unitec_0030-scaled.jpg',
  ),
  Noticia(
    title: '¿Qué es el soporte técnico en redes?',
    description: 'El soporte técnico en redes se encarga del mantenimiento de las redes informáticas de todo tipo de organizaciones, proporcionando apoyo técnico y garantizando su buen funcionamiento. Además, el soporte técnico de redes supervisa y mantiene los sistemas informáticos de la empresa, instala y configura el hardware y el software, y también resuelve los problemas técnicos que surgen.',
    imageUrl: 'https://ceutec.hn/wp-content/uploads/2024/01/4-que-es-el-soporte-tecnico-en-redes.jpg',
  ),
  Noticia(
    title: 'Unitec|Ceutec reciben el sello FUNDAHRSE por su compromiso con la responsabilidad social en Honduras',
    description: 'Por decimotercer año consecutivo, la Universidad Tecnológica Centroamericana (UNITEC) y el Centro Universitario Tecnológico (CEUTEC) han recibido el prestigioso Sello FUNDAHRSE de Empresa Socialmente Responsable. Este reconocimiento anual, otorgado por la Fundación Hondureña de Responsabilidad Social Empresarial (FUNDAHRSE), resalta el compromiso sostenido de UNITEC|CEUTEC hacia prácticas empresariales que impactan positivamente en Honduras, tanto a nivel interno como externo.',
    imageUrl: 'https://ceutec.hn/wp-content/uploads/2023/11/Premio-Fundahrse-2-1024x1024.png',
  ),
];
