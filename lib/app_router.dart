import 'package:digibells/amazoncalcpage.dart';
import 'package:digibells/commonfile.dart';
import 'package:digibells/container/amazonfeecalc.dart';
import 'package:digibells/flipcartcalcpage.dart';
import 'package:digibells/jiomartcalcpage.dart';
import 'package:digibells/redirectaboutus.dart';
import 'package:digibells/webdesigning.dart';
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
      path: '/home',
      builder: (context, state) => const MyHomePage(title: 'DigiBells'),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const Redirectaboutus(name: 'About Us'),
    ),
    GoRoute(
      path: '/websiteDesigning',
      builder: (context, state) => const Webdesigning(),
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
      path: '/Flipkartcalculator/:calculator',
      builder: (context, state) {
        final calculator =
            Uri.decodeComponent(state.pathParameters['calculator']!);
        return Flipcartcalcpage(name: calculator);
      },
    ),
    GoRoute(
      path: '/Jiomartcalculator/:calculator',
      builder: (context, state) {
        final calculator =
            Uri.decodeComponent(state.pathParameters['calculator']!);
        return Jiomartcalcpage(name: calculator);
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
