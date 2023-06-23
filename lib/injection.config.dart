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
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import 'core/data/base_local_data_source.dart' as _i15;
import 'core/data/base_remote_data_source.dart' as _i16;
import 'core/data/base_repository.dart' as _i17;
import 'core/network/network_info.dart' as _i6;
import 'features/login/data/data_sources/local/login_local_data_source.dart'
    as _i18;
import 'features/login/data/data_sources/local/login_local_data_source_imp.dart'
    as _i19;
import 'features/login/data/data_sources/remote/login_remote_data_source.dart'
    as _i4;
import 'features/login/data/data_sources/remote/login_remote_data_source_imp.dart'
    as _i5;
import 'features/login/data/repositories/login_repository_imp.dart' as _i21;
import 'features/login/domain/repositories/login_repository.dart' as _i20;
import 'features/login/domain/use_cases/login_use_case.dart' as _i22;
import 'features/login/presentation/bloc/login_bloc.dart' as _i33;
import 'features/product_details/data/data_sources/local/product_details_local_data_source.dart'
    as _i23;
import 'features/product_details/data/data_sources/local/product_details_local_data_source_imp.dart'
    as _i24;
import 'features/product_details/data/data_sources/remote/product_details_remote_data_source.dart'
    as _i7;
import 'features/product_details/data/data_sources/remote/product_details_remote_data_source_imp.dart'
    as _i8;
import 'features/product_details/data/repositories/product_details_repository_imp.dart'
    as _i26;
import 'features/product_details/domain/repositories/product_details_repository.dart'
    as _i25;
import 'features/product_details/domain/use_cases/add_to_cart_use_case.dart'
    as _i29;
import 'features/product_details/domain/use_cases/change_product_favorite_status_use_case.dart'
    as _i30;
import 'features/product_details/domain/use_cases/get_product_use_case.dart'
    as _i32;
import 'features/product_details/presentation/bloc/product_details_bloc.dart'
    as _i34;
import 'features/splash/data/data_sources/local/splash_local_data_source.dart'
    as _i11;
import 'features/splash/data/data_sources/local/splash_local_data_source_imp.dart'
    as _i12;
import 'features/splash/data/data_sources/remote/splash_remote_data_source.dart'
    as _i13;
import 'features/splash/data/data_sources/remote/splash_remote_data_source_imp.dart'
    as _i14;
import 'features/splash/data/repositories/splash_repository_imp.dart' as _i28;
import 'features/splash/domain/repositories/splash_repository.dart' as _i27;
import 'features/splash/domain/use_cases/check_token_use_case.dart' as _i31;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i10;
import 'injection.dart' as _i35;

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
  gh.lazySingleton<_i4.LoginRemoteDataSource>(
      () => _i5.LoginRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i6.NetworkInfo>(() => _i6.NetworkInfoImpl());
  gh.lazySingleton<_i7.ProductDetailsRemoteDataSource>(
      () => _i8.ProductDetailsRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  await gh.factoryAsync<_i9.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.factory<_i10.SplashBloc>(() => _i10.SplashBloc());
  gh.lazySingleton<_i11.SplashLocalDataSource>(() =>
      _i12.SplashLocalDataSourceImp(
          sharedPreferences: gh<_i9.SharedPreferences>()));
  gh.lazySingleton<_i13.SplashRemoteDataSource>(
      () => _i14.SplashRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i15.BaseLocalDataSource>(() => _i15.BaseLocalDataSourceImp(
      sharedPreferences: gh<_i9.SharedPreferences>()));
  gh.lazySingleton<_i16.BaseRemoteDataSource>(
      () => _i16.BaseRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i17.BaseRepository>(() => _i17.BaseRepositoryImpl(
        baseLocalDataSource: gh<_i15.BaseLocalDataSource>(),
        networkInfo: gh<_i6.NetworkInfo>(),
      ));
  gh.lazySingleton<_i18.LoginLocalDataSource>(() =>
      _i19.LoginLocalDataSourceImp(
          sharedPreferences: gh<_i9.SharedPreferences>()));
  gh.lazySingleton<_i20.LoginRepository>(() => _i21.LoginRepositoryImp(
        gh<_i18.LoginLocalDataSource>(),
        gh<_i4.LoginRemoteDataSource>(),
        baseLocalDataSource: gh<_i15.BaseLocalDataSource>(),
        networkInfo: gh<_i6.NetworkInfo>(),
      ));
  gh.lazySingleton<_i22.LoginUseCase>(
      () => _i22.LoginUseCase(gh<_i20.LoginRepository>()));
  gh.lazySingleton<_i23.ProductDetailsLocalDataSource>(() =>
      _i24.ProductDetailsLocalDataSourceImp(
          sharedPreferences: gh<_i9.SharedPreferences>()));
  gh.lazySingleton<_i25.ProductDetailsRepository>(
      () => _i26.ProductDetailsRepositoryImp(
            gh<_i23.ProductDetailsLocalDataSource>(),
            gh<_i7.ProductDetailsRemoteDataSource>(),
            baseLocalDataSource: gh<_i15.BaseLocalDataSource>(),
            networkInfo: gh<_i6.NetworkInfo>(),
          ));
  gh.lazySingleton<_i27.SplashRepository>(() => _i28.SplashRepositoryImp(
        gh<_i13.SplashRemoteDataSource>(),
        gh<_i11.SplashLocalDataSource>(),
        baseLocalDataSource: gh<_i15.BaseLocalDataSource>(),
        networkInfo: gh<_i6.NetworkInfo>(),
      ));
  gh.lazySingleton<_i29.AddToCartUseCase>(
      () => _i29.AddToCartUseCase(gh<_i25.ProductDetailsRepository>()));
  gh.lazySingleton<_i30.ChangeFavoriteStatusUseCase>(() =>
      _i30.ChangeFavoriteStatusUseCase(gh<_i25.ProductDetailsRepository>()));
  gh.lazySingleton<_i31.CheckTokenUseCase>(
      () => _i31.CheckTokenUseCase(gh<_i27.SplashRepository>()));
  gh.lazySingleton<_i32.GetProductUseCase>(
      () => _i32.GetProductUseCase(gh<_i25.ProductDetailsRepository>()));
  gh.factory<_i33.LoginBloc>(() => _i33.LoginBloc(gh<_i22.LoginUseCase>()));
  gh.lazySingleton<_i34.ProductDetailsBloc>(() => _i34.ProductDetailsBloc(
        gh<_i29.AddToCartUseCase>(),
        gh<_i30.ChangeFavoriteStatusUseCase>(),
        gh<_i32.GetProductUseCase>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i35.RegisterModule {}
