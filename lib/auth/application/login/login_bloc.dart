import 'package:ejemplo_fabricas/app/domain/email_address.dart';
import 'package:ejemplo_fabricas/app/domain/password.dart';
import 'package:ejemplo_fabricas/auth/domain/i_auth_facade.dart';
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
      logInBtnPressed: (e) async* {
        yield state;
      },
      emailChanged: (e) async* {
        yield state;
      },
      passwordChanged: (e) async* {
        yield state;
      },
    );
  }
}
