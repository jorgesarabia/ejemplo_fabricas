import 'package:ejemplo_fabricas/app/app_button.dart';
import 'package:ejemplo_fabricas/app/injectable/injection.dart';
import 'package:ejemplo_fabricas/auth/application/login/login_bloc.dart';
import 'package:ejemplo_fabricas/auth/presentation/widgets/fake_user.dart';
import 'package:ejemplo_fabricas/auth/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginBloc>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Login Page')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset('assets/portada.png'),
                const SizedBox(height: 22.0),
                LoginForm(),
                const SizedBox(height: 32.0),
                BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
                  Widget animatedButton;

                  if (state.isSubmitting) {
                    animatedButton = const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    animatedButton = AppButton(
                      label: 'Login',
                      onPressed: () {
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
                }),
                const SizedBox(height: 32.0),
                const FakeUser(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
