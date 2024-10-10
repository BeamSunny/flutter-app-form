import 'package:flutter/material.dart';
// import 'package:flutter_application/screens/list.dart';
import 'package:flutter_application/screens/travel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My Title",
      debugShowCheckedModeBanner: false,
      home: Travel(),
    );
  }
}
