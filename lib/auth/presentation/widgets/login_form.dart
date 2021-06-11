import 'package:ejemplo_fabricas/app/app_text_form.dart';
import 'package:ejemplo_fabricas/auth/application/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ejemplo_fabricas/auth/application/auth/auth_bloc.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.logginWasSuccessOption.fold(
          () => null,
          (loginWasSuccess) {
            if (!loginWasSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Las credenciales no coinciden, mire el mensaje abajo del botón',
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
              context.read<AuthBloc>().add(const AuthEvent.appIsStarting());
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
