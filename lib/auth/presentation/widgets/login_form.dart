import 'package:ejemplo_fabricas/app/app_text_form.dart';
import 'package:ejemplo_fabricas/auth/application/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.autovalidateMode,
          child: Column(
            children: [
              AppTextForm(
                hintText: 'Email',
                onChanged: (input) {
                  context.read<LoginBloc>().add(
                        LoginEvent.emailChanged(input),
                      );
                },
                validator: (_) => context.read<LoginBloc>().state.emailAddress.message,
              ),
              const SizedBox(height: 10.0),
              AppTextForm(
                hintText: 'Contraseña',
                obscureText: true,
                onChanged: (input) {
                  context.read<LoginBloc>().add(
                        LoginEvent.passwordChanged(input),
                      );
                },
                validator: (_) => context.read<LoginBloc>().state.password.message,
              ),
            ],
          ),
        );
      },
    );
  }
}
