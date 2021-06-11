import 'package:flutter/material.dart';

class NoItems extends StatelessWidget {
  const NoItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: double.infinity,
      height: height,
      child: Column(
        children: [
          SizedBox(height: height / 2.1),
          const Text(
            'No hay Fábricas que mostrar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Text(
            "Utilice el botón '+' \npara agregar Fábricas",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: height / 6),
        ],
      ),
    );
  }
}
