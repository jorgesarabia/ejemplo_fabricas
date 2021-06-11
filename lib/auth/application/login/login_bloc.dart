import 'package:ejemplo_fabricas/app/domain/email_address.dart';
import 'package:ejemplo_fabricas/app/domain/password.dart';
import 'package:ejemplo_fabricas/auth/domain/i_auth_facade.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.authFacade) : super(LoginState.initial());

  final IAuthFacade authFacade;

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.email),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
        );
      },
      logInBtnPressed: (e) async* {
        yield state.copyWith(
          autovalidateMode: AutovalidateMode.always,
        );

        if (state.password.isValid && state.emailAddress.isValid) {
          yield* _loginWithEmailAndPassword();
        }
      },
    );
  }

  Stream<LoginState> _loginWithEmailAndPassword() async* {
    yield state.copyWith(isSubmitting: true);

    final isLoggedIn = await authFacade.signInWithEmailAndPassword(
      emailAddress: state.emailAddress,
      password: state.password,
    );

    yield state.copyWith(isSubmitting: false);
  }
}
