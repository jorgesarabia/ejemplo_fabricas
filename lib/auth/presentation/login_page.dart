import 'package:ejemplo_fabricas/app/app_button.dart';
import 'package:ejemplo_fabricas/auth/presentation/widgets/fake_user.dart';
import 'package:ejemplo_fabricas/auth/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              AppButton(
                label: 'Login',
                onPressed: () {},
              ),
              const SizedBox(height: 32.0),
              const FakeUser(),
            ],
          ),
        ),
      ),
    );
  }
}
