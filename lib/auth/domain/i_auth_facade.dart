import 'package:dartz/dartz.dart';
import 'package:ejemplo_fabricas/app/domain/email_address.dart';
import 'package:ejemplo_fabricas/app/domain/password.dart';
import 'package:ejemplo_fabricas/auth/domain/user.dart';

abstract class IAuthFacade {
  Future<User> getSignedInUser();

  Future<Option<bool>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<void> signOut();
}
