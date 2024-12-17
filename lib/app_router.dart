import 'package:digibells/commonfile.dart';
import 'package:digibells/homescreen.dart';
import 'package:digibells/redirectaboutus.dart';
import 'package:digibells/secondScreen.dart';
import 'package:digibells/test.dart';
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
      path: '/:name',
      builder: (context, state) {
        final name = Uri.decodeComponent(state.pathParameters['name']!);
        return Commonfile(name: name);
      },
    ),
  ],
);
