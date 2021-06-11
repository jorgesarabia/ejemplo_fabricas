import 'package:flutter/material.dart';

class FakeUser extends StatelessWidget {
  const FakeUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        text: 'Para loguearse utilice las siguientes credenciales:\n\n',
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black87,
        ),
        children: [
          TextSpan(
            text: 'Usuario',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ': Admin\n',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'Contraseña',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ': Admin',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
