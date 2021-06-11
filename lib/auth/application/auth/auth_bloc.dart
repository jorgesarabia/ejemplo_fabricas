import 'package:ejemplo_fabricas/auth/domain/i_auth_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authFacade) : super(const AuthState.initial());

  final IAuthFacade authFacade;

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      appIsStarting: (e) async* {
        final user = await authFacade.getSignedInUser();

        if (user.isLoggedIn) {
          yield const AuthState.isLoggedIn();
        } else {
          yield const AuthState.userIsNotLoggedIn();
        }
      },
      signOutPressed: (e) async* {
        await authFacade.signOut();

        yield const AuthState.userIsNotLoggedIn();
      },
    );
  }
}
