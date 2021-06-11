import 'package:ejemplo_fabricas/app/app_text_form.dart';
import 'package:ejemplo_fabricas/fabricas/application/agregar_fabrica/add_fabrica_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FabricaForm extends StatelessWidget {
  const FabricaForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddFabricaBloc, AddFabricaState>(
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
                // validator: (_) => context.read<AddFabricaBloc>().state.,
              ),
              const SizedBox(height: 10.0),
              AppTextForm(
                hintText: 'Email',
                onChanged: (input) {
                  context.read<AddFabricaBloc>().add(
                        AddFabricaEvent.emailChanged(input),
                      );
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
