import 'package:digibells/app_router.dart';
import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                context.go('/commonfile/Contact%20Us');
              },
              child:  GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(
                      '/commonfile/Contact%20Us'); // Pass the parameter
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0),
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color:black,
                    ),
                  ),
                ),
              ),)
        ],
      ),
    );
  }
}
