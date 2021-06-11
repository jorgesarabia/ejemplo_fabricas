import 'package:ejemplo_fabricas/app/app_text_form.dart';
import 'package:ejemplo_fabricas/fabricas/application/agregar_fabrica/add_fabrica_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FabricaForm extends StatelessWidget {
  const FabricaForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddFabricaBloc, AddFabricaState>(
      listener: (context, state) {
        state.saveFailOrSuccess.fold(
          () => null,
          (loginWasSuccess) {
            if (!loginWasSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'No se pudo guardar la Fábrica',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            } else {
              Navigator.of(context).pop(true);
            }
          },
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.autovalidateMode,
          child: Column(
            children: [
              AppTextForm(
                hintText: 'Nombre',
                onChanged: (input) {
                  context.read<AddFabricaBloc>().add(
                        AddFabricaEvent.nombreChanged(input),
                      );
                },
                validator: (_) => context.read<AddFabricaBloc>().state.fabrica.nombre.message,
              ),
              const SizedBox(height: 10.0),
              AppTextForm(
                hintText: 'Email',
                onChanged: (input) {
                  context.read<AddFabricaBloc>().add(
                        AddFabricaEvent.emailChanged(input),
                      );
                },
                validator: (_) {
                  final email = context.read<AddFabricaBloc>().state.fabrica.email;
                  if (email.value.isNotEmpty) {
                    return email.message;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              AppTextForm(
                hintText: 'Teléfono',
                onChanged: (input) {
                  context.read<AddFabricaBloc>().add(
                        AddFabricaEvent.telefonoChanged(input),
                      );
                },
              ),
              const SizedBox(height: 10.0),
              AppTextForm(
                hintText: 'Dirección',
                onChanged: (input) {
                  context.read<AddFabricaBloc>().add(
                        AddFabricaEvent.direccionChanged(input),
                      );
                },
              ),
              const SizedBox(height: 10.0),
              AppTextForm(
                hintText: 'Web',
                onChanged: (input) {
                  context.read<AddFabricaBloc>().add(
                        AddFabricaEvent.webChanged(input),
                      );
                },
              ),
              const SizedBox(height: 10.0),
              AppTextForm(
                hintText: 'Descripción',
                maxLines: 5,
                onChanged: (input) {
                  context.read<AddFabricaBloc>().add(
                        AddFabricaEvent.descripcionChanged(input),
                      );
                },
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        );
      },
    );
  }
}
