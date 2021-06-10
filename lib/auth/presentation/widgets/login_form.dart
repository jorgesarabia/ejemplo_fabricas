import 'package:ejemplo_fabricas/app/app_text_form.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextForm(
            hintText: 'Usuario',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Add some text';
              }
              return null;
            },
          ),
          const SizedBox(height: 10.0),
          AppTextForm(
            hintText: 'Contraseña',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Add some text';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
