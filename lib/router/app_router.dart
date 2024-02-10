import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tuproject/presentation/screens/cambio_divisas/cambio_divisas_screen.dart';
import 'package:tuproject/presentation/screens/home/home_screen.dart';
import 'package:tuproject/presentation/screens/noticias/noticias_screen.dart';
import 'package:tuproject/presentation/screens/tareas/tareas_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/noticias',
        builder: (context, state) => NoticiasScreen(),
      ),
      GoRoute(
        path: '/tareas',
        builder: (context, state) => TareasScreen(),
      ),
      GoRoute(
        path: '/cambio_divisas',
        builder: (context, state) => CambioDivisasScreen(),
      ),
    ],
  );
}
