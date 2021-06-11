part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
  }) = _LoginUserState;

  factory LoginState.initial() {
    return LoginState(
      emailAddress: EmailAddress(),
      password: Password(),
      isSubmitting: false,
    );
  }
}
