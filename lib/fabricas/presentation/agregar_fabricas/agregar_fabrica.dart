import 'package:ejemplo_fabricas/app/injectable/injection.dart';
import 'package:ejemplo_fabricas/fabricas/application/agregar_fabrica/add_fabrica_bloc.dart';
import 'package:ejemplo_fabricas/fabricas/presentation/agregar_fabricas/widgets/fabrica_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgregarFabrica extends StatelessWidget {
  const AgregarFabrica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddFabricaBloc>(
      create: (_) => getIt<AddFabricaBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Agregar Fábrica'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [
                Text(
                  'Ingrese los datos de la Fábrica',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 12.0),
                FabricaForm(),
                SizedBox(height: 12.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
