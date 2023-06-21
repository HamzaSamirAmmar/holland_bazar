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

import 'core/data/base_local_data_source.dart' as _i11;
import 'core/data/base_remote_data_source.dart' as _i12;
import 'core/data/base_repository.dart' as _i13;
import 'core/network/network_info.dart' as _i4;
import 'features/splash/data/data_sources/local/splash_local_data_source.dart'
    as _i7;
import 'features/splash/data/data_sources/local/splash_local_data_source_imp.dart'
    as _i8;
import 'features/splash/data/data_sources/remote/splash_remote_data_source.dart'
    as _i9;
import 'features/splash/data/data_sources/remote/splash_remote_data_source_imp.dart'
    as _i10;
import 'features/splash/data/repositories/splash_repository_imp.dart' as _i15;
import 'features/splash/domain/repositories/splash_repository.dart' as _i14;
import 'features/splash/domain/use_cases/check_token_use_case.dart' as _i16;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i6;
import 'injection.dart' as _i17;

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
  gh.lazySingleton<_i7.SplashLocalDataSource>(() =>
      _i8.SplashLocalDataSourceImp(
          sharedPreferences: gh<_i5.SharedPreferences>()));
  gh.lazySingleton<_i9.SplashRemoteDataSource>(
      () => _i10.SplashRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i11.BaseLocalDataSource>(() => _i11.BaseLocalDataSourceImp(
      sharedPreferences: gh<_i5.SharedPreferences>()));
  gh.lazySingleton<_i12.BaseRemoteDataSource>(
      () => _i12.BaseRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i13.BaseRepository>(() => _i13.BaseRepositoryImpl(
        baseLocalDataSource: gh<_i11.BaseLocalDataSource>(),
        networkInfo: gh<_i4.NetworkInfo>(),
      ));
  gh.lazySingleton<_i14.SplashRepository>(() => _i15.SplashRepositoryImp(
        gh<_i9.SplashRemoteDataSource>(),
        gh<_i7.SplashLocalDataSource>(),
        baseLocalDataSource: gh<_i11.BaseLocalDataSource>(),
        networkInfo: gh<_i4.NetworkInfo>(),
      ));
  gh.lazySingleton<_i16.CheckTokenUseCase>(
      () => _i16.CheckTokenUseCase(gh<_i14.SplashRepository>()));
  return getIt;
}

class _$RegisterModule extends _i17.RegisterModule {}
