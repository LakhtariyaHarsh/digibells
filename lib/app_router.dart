import 'package:digibells/amazoncalcpage.dart';
import 'package:digibells/commonfile.dart';
import 'package:digibells/container/amazonfeecalc.dart';
import 'package:digibells/redirectaboutus.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'main.dart'; // Import MyHomePage from your main.dart file.

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(title: 'DigiBells'),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const Redirectaboutus(name: 'About Us'),
    ),
    GoRoute(
      path: '/calculator/:calculator',
      builder: (context, state) {
        final calculator =
            Uri.decodeComponent(state.pathParameters['calculator']!);
        return Amazoncalcpage(name: calculator);
      },
    ),
    GoRoute(
      path: '/:name',
      builder: (context, state) {
        final name = Uri.decodeComponent(state.pathParameters['name']!);
        return Commonfile(name: name);
      },
    ),
  ],
);
