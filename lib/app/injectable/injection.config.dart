// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../auth/application/auth/auth_bloc.dart' as _i10;
import '../../auth/application/login/login_bloc.dart' as _i9;
import '../../auth/domain/i_auth_facade.dart' as _i6;
import '../../auth/domain/user.dart' as _i8;
import '../../auth/infrastructure/auth_repository.dart' as _i7;
import '../../fabricas/application/agregar_fabrica/add_fabrica_bloc.dart'
    as _i5;
import '../../fabricas/domain/i_fabrica_facade.dart' as _i3;
import '../../fabricas/infrastructure/fabrica_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IFabricaFacade>(() => _i4.FabricaRepository());
  gh.factory<_i5.AddFabricaBloc>(
      () => _i5.AddFabricaBloc(get<_i3.IFabricaFacade>()));
  gh.lazySingleton<_i6.IAuthFacade>(
      () => _i7.AuthRepository(user: get<_i8.User>()));
  gh.factory<_i9.LoginBloc>(() => _i9.LoginBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(get<_i6.IAuthFacade>()));
  gh.singleton<_i8.User>(_i8.User());
  return get;
}
