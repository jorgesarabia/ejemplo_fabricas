import 'package:ejemplo_fabricas/app/injectable/injection.dart';
import 'package:ejemplo_fabricas/app/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Fabricas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}
