import 'package:injectable/injectable.dart';

@singleton
class User {
  String email = '';

  bool get isLoggedIn => email.isNotEmpty;
}
