import 'package:ejemplo_fabricas/fabricas/domain/fabrica.dart';
import 'package:ejemplo_fabricas/fabricas/presentation/detalle_fabrica/widgets/fabrica_info.dart';
import 'package:flutter/material.dart';

class DetalleFabrica extends StatelessWidget {
  const DetalleFabrica({
    Key? key,
    required this.fabrica,
  }) : super(key: key);

  final Fabrica fabrica;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fabrica.nombre),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset('assets/portada.png'),
            const SizedBox(height: 15.0),
            FabricaInfo(
              info: 'Dirección:',
              infoValue: fabrica.direccion,
              iconColor: Colors.blue,
              iconData: Icons.home,
            ),
            const SizedBox(height: 15.0),
            FabricaInfo(
              info: 'Telefono:',
              infoValue: fabrica.telefono,
              iconColor: Colors.green,
              iconData: Icons.phone,
            ),
            const SizedBox(height: 15.0),
            FabricaInfo(
              info: 'Email:',
              infoValue: fabrica.email.toString(),
              iconColor: Colors.red,
              iconData: Icons.email,
            ),
            const SizedBox(height: 15.0),
            FabricaInfo(
              info: '',
              infoValue: fabrica.webPage,
              iconColor: Colors.blue,
              iconData: Icons.web,
            ),
            const SizedBox(height: 15.0),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Text(fabrica.descripcion),
            ),
          ],
        ),
      ),
    );
  }
}
