import 'package:ejemplo_fabricas/app/app_button.dart';
import 'package:ejemplo_fabricas/fabricas/application/agregar_fabrica/add_fabrica_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FabricaButton extends StatelessWidget {
  const FabricaButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddFabricaBloc, AddFabricaState>(builder: (context, state) {
      Widget animatedButton;

      if (state.isSubmitting) {
        animatedButton = const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        animatedButton = AppButton(
          label: 'Guardar',
          onPressed: () {
            FocusScope.of(context).unfocus();
            context.read<AddFabricaBloc>().add(const AddFabricaEvent.saveButtonPressed());
          },
        );
      }

      return AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        child: SizedBox(
          height: 50.0,
          child: animatedButton,
        ),
      );
    });
  }
}
