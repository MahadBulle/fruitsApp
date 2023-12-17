import 'package:flutter/material.dart';
import 'package:fruits_app/HomePage.dart';

void main() {
  runApp(const Fruits());
}

class Fruits extends StatelessWidget {
  const Fruits({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}