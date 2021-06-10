import 'package:ejemplo_fabricas/app/app_button.dart';
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
              const Placeholder(
                fallbackHeight: 100,
                fallbackWidth: 100,
              ),
              const SizedBox(height: 22.0),
              LoginForm(),
              const SizedBox(height: 32.0),
              AppButton(
                label: 'Login',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
