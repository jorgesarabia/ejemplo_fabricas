import 'package:ejemplo_fabricas/fabricas/domain/fabrica.dart';
import 'package:ejemplo_fabricas/fabricas/presentation/detalle_fabrica/detalle_fabrica.dart';
import 'package:flutter/material.dart';

class ListFabricasWidget extends StatelessWidget {
  const ListFabricasWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Fabrica> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final fabrica = items[index];

          return Card(
            elevation: 5.0,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                child: Image.asset(
                  'assets/portada.png',
                ),
              ),
              title: Text(fabrica.nombre.toString()),
              isThreeLine: true,
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dirección: ${_detail(fabrica.direccion)}'),
                  const SizedBox(height: 5.0),
                  Text('Tel: ${_detail(fabrica.telefono)}'),
                ],
              ),
              onTap: () {
                Navigator.of(context).push<dynamic>(
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) {
                      return DetalleFabrica(fabrica: fabrica);
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  String _detail(String value) {
    if (value.isNotEmpty) {
      return value;
    }

    return 'Dato no cargado';
  }
}
