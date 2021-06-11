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
  Future<bool> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final bool emailMatch = emailAddress.value == 'admin@admin.com';
    final bool passMatch = password.value == 'Admin123';

    // Simula el retardo de la red
    await Future<dynamic>.delayed(const Duration(seconds: 2));

    if (emailMatch && passMatch) {
      return true;
    }

    return false;
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
