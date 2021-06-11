import 'package:ejemplo_fabricas/app/injectable/injection.dart';
import 'package:ejemplo_fabricas/fabricas/application/listar_fabricas/lista_fabrica_bloc.dart';
import 'package:ejemplo_fabricas/fabricas/presentation/agregar_fabricas/agregar_fabrica.dart';
import 'package:ejemplo_fabricas/fabricas/presentation/lista_de_fabricas/widgets/list_fabricas_widget.dart';
import 'package:ejemplo_fabricas/fabricas/presentation/lista_de_fabricas/widgets/no_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ListaFabricaBloc>(
      create: (_) => getIt<ListaFabricaBloc>()..add(const ListaFabricaEvent.getItems()),
      child: BlocBuilder<ListaFabricaBloc, ListaFabricaState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: state.maybeMap(
                orElse: () => const CircularProgressIndicator(),
                isEmpty: (_) => const NoItems(),
                listOfFabricas: (l) => ListFabricasWidget(items: l.items),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push<dynamic>(
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) {
                      return const AgregarFabrica();
                    },
                  ),
                );
              },
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
