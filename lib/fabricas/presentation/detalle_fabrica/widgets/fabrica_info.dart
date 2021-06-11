import 'package:flutter/material.dart';

class FabricaInfo extends StatelessWidget {
  const FabricaInfo({
    Key? key,
    required this.info,
    required this.infoValue,
    this.iconData,
    this.iconColor,
  }) : super(key: key);

  final String info;
  final String infoValue;
  final Color? iconColor;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (iconData != null) ...[
          Icon(
            iconData,
            size: 25.0,
            color: iconColor,
          ),
          const SizedBox(width: 5.0),
        ],
        Text(
          info,
          style: const TextStyle(
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Text(
            _valueIsCharged,
            style: const TextStyle(
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }

  String get _valueIsCharged {
    if (infoValue.isNotEmpty) {
      return infoValue;
    }

    return 'Dato no cargado';
  }
}
