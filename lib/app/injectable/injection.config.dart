// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sqflite/sqflite.dart' as _i3;
import 'package:sqflite/sqlite_api.dart' as _i6;

import '../../auth/application/auth/auth_bloc.dart' as _i12;
import '../../auth/application/login/login_bloc.dart' as _i11;
import '../../auth/domain/i_auth_facade.dart' as _i8;
import '../../auth/domain/user.dart' as _i10;
import '../../auth/infrastructure/auth_repository.dart' as _i9;
import '../../fabricas/application/agregar_fabrica/add_fabrica_bloc.dart'
    as _i7;
import '../../fabricas/domain/i_fabrica_facade.dart' as _i4;
import '../../fabricas/infrastructure/fabrica_repository.dart' as _i5;
import 'injectable_modules.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  await gh.factoryAsync<_i3.Database>(() => injectableModule.database,
      preResolve: true);
  gh.lazySingleton<_i4.IFabricaFacade>(
      () => _i5.FabricaRepository(db: get<_i6.Database>()));
  gh.factory<_i7.AddFabricaBloc>(
      () => _i7.AddFabricaBloc(get<_i4.IFabricaFacade>()));
  gh.lazySingleton<_i8.IAuthFacade>(
      () => _i9.AuthRepository(user: get<_i10.User>()));
  gh.factory<_i11.LoginBloc>(() => _i11.LoginBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i8.IAuthFacade>()));
  gh.singleton<_i10.User>(_i10.User());
  return get;
}

class _$InjectableModule extends _i13.InjectableModule {}
