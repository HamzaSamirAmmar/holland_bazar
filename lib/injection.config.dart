// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import 'core/data/base_local_data_source.dart' as _i7;
import 'core/data/base_remote_data_source.dart' as _i8;
import 'core/data/base_repository.dart' as _i9;
import 'core/network/network_info.dart' as _i4;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i6;
import 'injection.dart' as _i10;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.NetworkInfo>(() => _i4.NetworkInfoImpl());
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.factory<_i6.SplashBloc>(() => _i6.SplashBloc());
  gh.lazySingleton<_i7.BaseLocalDataSource>(() => _i7.BaseLocalDataSourceImp(
      sharedPreferences: gh<_i5.SharedPreferences>()));
  gh.lazySingleton<_i8.BaseRemoteDataSource>(
      () => _i8.BaseRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i9.BaseRepository>(() => _i9.BaseRepositoryImpl(
        baseLocalDataSource: gh<_i7.BaseLocalDataSource>(),
        networkInfo: gh<_i4.NetworkInfo>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i10.RegisterModule {}
