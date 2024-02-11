import 'package:go_router/go_router.dart';
import 'package:flutter_laboratorio1_programovil/presentation/screens/screens/divisas/divisas_screen.dart';
import 'package:flutter_laboratorio1_programovil/presentation/screens/screens/home/home_screen.dart';
import 'package:flutter_laboratorio1_programovil/presentation/screens/screens/noticias_screen.dart';
import 'package:flutter_laboratorio1_programovil/presentation/screens/screens/tareas_screen.dart';

final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/noticias',
        builder: (context, state) => const NoticiasScreen(),
      ),
      GoRoute(
        path: '/tareas',
        builder: (context, state) => const TareasScreen(),
      ),
      GoRoute(
        path: '/divisas',
        builder: (context, state) => const CambioDivisasScreen(),
      ),
    ],
  );

  

