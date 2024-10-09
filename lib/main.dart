import 'package:flutter/material.dart';
import 'package:flutter_application/screens/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Order",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 101, 13, 6),
          centerTitle: true,
        ),
        body: const ListData(),
      ),
    );
  }
}
