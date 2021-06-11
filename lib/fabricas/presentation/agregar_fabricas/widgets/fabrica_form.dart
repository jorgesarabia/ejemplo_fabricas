import 'package:ejemplo_fabricas/app/app_text_form.dart';
import 'package:flutter/material.dart';

class FabricaForm extends StatelessWidget {
  const FabricaForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      // autovalidateMode: state.autovalidateMode,
      child: Column(
        children: [
          AppTextForm(
            hintText: 'Nombre',
            onChanged: (input) {},
          ),
          const SizedBox(height: 10.0),
          AppTextForm(
            hintText: 'Email',
            onChanged: (input) {},
          ),
          const SizedBox(height: 10.0),
          AppTextForm(
            hintText: 'Teléfono',
            onChanged: (input) {},
          ),
          const SizedBox(height: 10.0),
          AppTextForm(
            hintText: 'Dirección',
            onChanged: (input) {},
          ),
          const SizedBox(height: 10.0),
          AppTextForm(
            hintText: 'Web',
            onChanged: (input) {},
          ),
          const SizedBox(height: 10.0),
          AppTextForm(
            hintText: 'Descripción',
            maxLines: 5,
            onChanged: (input) {},
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
