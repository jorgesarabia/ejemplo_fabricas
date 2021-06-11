import 'package:flutter/material.dart';

class AgregarFabrica extends StatelessWidget {
  const AgregarFabrica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Fábrica'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
