import 'package:ejemplo_fabricas/app/injectable/injection.dart';
import 'package:ejemplo_fabricas/app/landing_page.dart';
import 'package:ejemplo_fabricas/auth/application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>()..add(const AuthEvent.appIsStarting()),
        ),
      ],
      child: MaterialApp(
        title: 'Ejemplo Fabricas',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LandingPage(),
      ),
    );
  }
}
