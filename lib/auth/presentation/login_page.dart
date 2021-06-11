import 'package:ejemplo_fabricas/app/injectable/injection.dart';
import 'package:ejemplo_fabricas/auth/application/login/login_bloc.dart';
import 'package:ejemplo_fabricas/auth/presentation/widgets/fake_user.dart';
import 'package:ejemplo_fabricas/auth/presentation/widgets/login_button.dart';
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
                const LoginButton(),
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
