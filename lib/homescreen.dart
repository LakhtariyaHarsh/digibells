import 'package:digibells/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to home page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                context.go('/test');
              },
              child: Text("Go to test screen"))
        ],
      ),
    );
  }
}
