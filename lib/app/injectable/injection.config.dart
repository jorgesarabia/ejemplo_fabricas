// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../auth/application/auth/auth_bloc.dart' as _i7;
import '../../auth/application/login/login_bloc.dart' as _i6;
import '../../auth/domain/i_auth_facade.dart' as _i3;
import '../../auth/domain/user.dart' as _i5;
import '../../auth/infrastructure/auth_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(
      () => _i4.AuthRepository(user: get<_i5.User>()));
  gh.factory<_i6.LoginBloc>(() => _i6.LoginBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i7.AuthBloc>(() => _i7.AuthBloc(get<_i3.IAuthFacade>()));
  gh.singleton<_i5.User>(_i5.User());
  return get;
}
