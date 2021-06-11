import 'package:ejemplo_fabricas/app/injectable/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection() {
  $initGetIt(getIt);
}
