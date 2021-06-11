import 'package:ejemplo_fabricas/app/domain/email_address.dart';
import 'package:ejemplo_fabricas/fabricas/domain/fabrica.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            final fabrica = _items[index];

            return Card(
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  child: Image.asset(
                    'assets/portada.png',
                  ),
                ),
                title: Text(fabrica.nombre),
                isThreeLine: true,
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dirección: ${fabrica.direccion}'),
                    const SizedBox(height: 5.0),
                    Text('Tel: ${fabrica.telefono}'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<Fabrica> get _items {
    return <Fabrica>[
      Fabrica(
        nombre: 'Electronica Sarabia',
        email: EmailAddress('algo@algo.com'),
        telefono: '444650',
        direccion: 'Bs As 1154',
        descripcion: 'Electronica que se dedica a vender cosas',
      )
    ];
  }
}
