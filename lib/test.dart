import 'package:digibells/app_router.dart';
import 'package:digibells/topbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Screen"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                context.go('/second');
              },
              child: Text("Second screen"))
        ],
      ),
    );
  }
}
