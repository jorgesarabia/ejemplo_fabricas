import 'package:ejemplo_fabricas/app/domain/email_address.dart';
import 'package:ejemplo_fabricas/app/domain/password.dart';
import 'package:ejemplo_fabricas/auth/domain/i_auth_facade.dart';
import 'package:ejemplo_fabricas/auth/domain/user.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthFacade {
  AuthRepository({
    required this.user,
  });

  final User user;

  @override
  Future<User> getSignedInUser() {
    return Future.value(user);
  }

  @override
  Future<void> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
