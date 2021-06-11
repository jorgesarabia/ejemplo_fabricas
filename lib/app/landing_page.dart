import 'package:ejemplo_fabricas/auth/presentation/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ejemplo_fabricas/auth/application/auth/auth_bloc.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const _LocalSplash(),
          isLoggedIn: (_) => Container(),
          userIsNotLoggedIn: (_) => const LoginPage(),
        );
      },
    );
  }
}

class _LocalSplash extends StatelessWidget {
  const _LocalSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
