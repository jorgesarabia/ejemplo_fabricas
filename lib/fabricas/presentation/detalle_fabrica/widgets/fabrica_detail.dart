import 'package:flutter/material.dart';

class FabricaDetail extends StatelessWidget {
  const FabricaDetail({
    Key? key,
    required this.descripcion,
  }) : super(key: key);

  final String descripcion;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Text(
        _valueIsCharged,
        style: const TextStyle(
          fontSize: 22.0,
        ),
      ),
    );
  }

  String get _valueIsCharged {
    if (descripcion.isNotEmpty) {
      return descripcion;
    }

    return 'Dato no cargado';
  }
}
