import 'package:ejemplo_fabricas/app/app_button.dart';
import 'package:ejemplo_fabricas/auth/application/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      Widget animatedButton;

      if (state.isSubmitting) {
        animatedButton = const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        animatedButton = AppButton(
          label: 'Login',
          onPressed: () {
            FocusScope.of(context).unfocus();
            context.read<LoginBloc>().add(const LoginEvent.logInBtnPressed());
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
