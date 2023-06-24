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
import 'package:shared_preferences/shared_preferences.dart' as _i17;

import 'core/data/base_local_data_source.dart' as _i26;
import 'core/data/base_remote_data_source.dart' as _i27;
import 'core/data/base_repository.dart' as _i28;
import 'core/network/network_info.dart' as _i8;
import 'features/cart/data/data_sources/local/cart_local_data_source.dart'
    as _i29;
import 'features/cart/data/data_sources/local/cart_local_data_source_imp.dart'
    as _i30;
import 'features/cart/data/data_sources/remote/cart_remote_data_source.dart'
    as _i31;
import 'features/cart/data/data_sources/remote/cart_remote_data_source_imp.dart'
    as _i32;
import 'features/cart/data/repositories/cart_repository_imp.dart' as _i34;
import 'features/cart/domain/repositories/cart_repository.dart' as _i33;
import 'features/cart/domain/use_cases/add_to_cart_use_case.dart' as _i69;
import 'features/cart/domain/use_cases/apply_promo_code_use_case.dart' as _i71;
import 'features/cart/domain/use_cases/get_cart_use_case.dart' as _i35;
import 'features/cart/domain/use_cases/remove_from_cart_use_case.dart' as _i61;
import 'features/cart/presentation/bloc/cart_bloc.dart' as _i72;
import 'features/home/data/data_sources/local/home_local_data_source.dart'
    as _i36;
import 'features/home/data/data_sources/local/home_local_data_source_imp.dart'
    as _i37;
import 'features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i4;
import 'features/home/data/data_sources/remote/home_remote_data_source_imp.dart'
    as _i5;
import 'features/home/data/repositories/home_repository_imp.dart' as _i39;
import 'features/home/domain/repositories/home_repository.dart' as _i38;
import 'features/home/domain/use_cases/get_categories_use_case.dart' as _i76;
import 'features/home/domain/use_cases/get_frequently_ordered_products_use_case.dart'
    as _i77;
import 'features/home/presentation/bloc/home_bloc.dart' as _i80;
import 'features/login/data/data_sources/local/login_local_data_source.dart'
    as _i40;
import 'features/login/data/data_sources/local/login_local_data_source_imp.dart'
    as _i41;
import 'features/login/data/data_sources/remote/login_remote_data_source.dart'
    as _i6;
import 'features/login/data/data_sources/remote/login_remote_data_source_imp.dart'
    as _i7;
import 'features/login/data/repositories/login_repository_imp.dart' as _i43;
import 'features/login/domain/repositories/login_repository.dart' as _i42;
import 'features/login/domain/use_cases/login_use_case.dart' as _i44;
import 'features/login/presentation/bloc/login_bloc.dart' as _i81;
import 'features/onboarding_page/data/data_sources/local/onboarding_local_data_source.dart'
    as _i49;
import 'features/onboarding_page/data/data_sources/local/onboarding_local_data_source_imp.dart'
    as _i50;
import 'features/onboarding_page/data/data_sources/remote/onboarding_remote_data_source.dart'
    as _i11;
import 'features/onboarding_page/data/data_sources/remote/onboarding_remote_data_source_imp.dart'
    as _i12;
import 'features/onboarding_page/data/repositories/onboarding_repository_imp.dart'
    as _i52;
import 'features/onboarding_page/domain/repositories/onboarding_repository.dart'
    as _i51;
import 'features/onboarding_page/domain/use_cases/change_onboarding_status_use_case.dart'
    as _i74;
import 'features/onboarding_page/presentation/bloc/onboarding_bloc.dart'
    as _i83;
import 'features/otp/data/data_sources/local/otp_local_data_source.dart'
    as _i45;
import 'features/otp/data/data_sources/local/otp_local_data_source_imp.dart'
    as _i46;
import 'features/otp/data/data_sources/remote/otp_remote_data_souce_imp.dart'
    as _i10;
import 'features/otp/data/data_sources/remote/otp_remote_data_source.dart'
    as _i9;
import 'features/otp/data/repositories/otp_repository_imp.dart' as _i48;
import 'features/otp/domain/repositories/otp_repository.dart' as _i47;
import 'features/otp/domain/use_cases/send_code_use_case.dart' as _i63;
import 'features/otp/presentation/bloc/otp_bloc.dart' as _i82;
import 'features/password/data/data_sources/local/password_local_data_source.dart'
    as _i53;
import 'features/password/data/data_sources/local/password_local_data_source_imp.dart'
    as _i54;
import 'features/password/data/data_sources/remote/password_remote_data_souce_imp.dart'
    as _i14;
import 'features/password/data/data_sources/remote/password_remote_data_source.dart'
    as _i13;
import 'features/password/data/repositories/password_repository_imp.dart'
    as _i56;
import 'features/password/domain/repositories/password_repository.dart' as _i55;
import 'features/password/domain/use_cases/reset_password_use_case.dart'
    as _i62;
import 'features/password/presentation/bloc/password_bloc.dart' as _i84;
import 'features/product_details/data/data_sources/local/product_details_local_data_source.dart'
    as _i57;
import 'features/product_details/data/data_sources/local/product_details_local_data_source_imp.dart'
    as _i58;
import 'features/product_details/data/data_sources/remote/product_details_remote_data_source.dart'
    as _i15;
import 'features/product_details/data/data_sources/remote/product_details_remote_data_source_imp.dart'
    as _i16;
import 'features/product_details/data/repositories/product_details_repository_imp.dart'
    as _i60;
import 'features/product_details/domain/repositories/product_details_repository.dart'
    as _i59;
import 'features/product_details/domain/use_cases/add_to_cart_use_case.dart'
    as _i70;
import 'features/product_details/domain/use_cases/change_product_favorite_status_use_case.dart'
    as _i73;
import 'features/product_details/domain/use_cases/get_product_use_case.dart'
    as _i78;
import 'features/product_details/presentation/bloc/product_details_bloc.dart'
    as _i85;
import 'features/sign_up/data/data_sources/local/sign_up_local_data_source.dart'
    as _i18;
import 'features/sign_up/data/data_sources/local/sign_up_local_data_source_imp.dart'
    as _i19;
import 'features/sign_up/data/data_sources/remote/sign_up_remote_data_souce_imp.dart'
    as _i21;
import 'features/sign_up/data/data_sources/remote/sign_up_remote_data_source.dart'
    as _i20;
import 'features/sign_up/data/repositories/sign_up_repository_imp.dart' as _i65;
import 'features/sign_up/domain/repositories/sign_up_repository.dart' as _i64;
import 'features/sign_up/domain/use_cases/sign_up_use_case.dart' as _i66;
import 'features/sign_up/presentation/bloc/sign_up_bloc.dart' as _i86;
import 'features/splash/data/data_sources/local/splash_local_data_source.dart'
    as _i22;
import 'features/splash/data/data_sources/local/splash_local_data_source_imp.dart'
    as _i23;
import 'features/splash/data/data_sources/remote/splash_remote_data_source.dart'
    as _i24;
import 'features/splash/data/data_sources/remote/splash_remote_data_source_imp.dart'
    as _i25;
import 'features/splash/data/repositories/splash_repository_imp.dart' as _i68;
import 'features/splash/domain/repositories/splash_repository.dart' as _i67;
import 'features/splash/domain/use_cases/check_token_use_case.dart' as _i75;
import 'features/splash/domain/use_cases/get_show_on_boarding_status_use_case.dart'
    as _i79;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i87;
import 'injection.dart' as _i88;

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
  gh.lazySingleton<_i4.HomeRemoteDataSource>(
      () => _i5.HomeRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i6.LoginRemoteDataSource>(
      () => _i7.LoginRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i8.NetworkInfo>(() => _i8.NetworkInfoImpl());
  gh.lazySingleton<_i9.OTPRemoteDataSource>(
      () => _i10.OTPRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i11.OnboardingRemoteDataSource>(
      () => _i12.OnboardingRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i13.PasswordRemoteDataSource>(
      () => _i14.PasswordRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i15.ProductDetailsRemoteDataSource>(
      () => _i16.ProductDetailsRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  await gh.factoryAsync<_i17.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i18.SignUpLocalDataSource>(() =>
      _i19.SignUpLocalDataSourceImp(
          sharedPreferences: gh<_i17.SharedPreferences>()));
  gh.lazySingleton<_i20.SignUpRemoteDataSource>(
      () => _i21.SignUpRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i22.SplashLocalDataSource>(() =>
      _i23.SplashLocalDataSourceImp(
          sharedPreferences: gh<_i17.SharedPreferences>()));
  gh.lazySingleton<_i24.SplashRemoteDataSource>(
      () => _i25.SplashRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i26.BaseLocalDataSource>(() => _i26.BaseLocalDataSourceImp(
      sharedPreferences: gh<_i17.SharedPreferences>()));
  gh.lazySingleton<_i27.BaseRemoteDataSource>(
      () => _i27.BaseRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i28.BaseRepository>(() => _i28.BaseRepositoryImpl(
        baseLocalDataSource: gh<_i26.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i29.CartLocalDataSource>(() => _i30.CartLocalDataSourceImp(
      sharedPreferences: gh<_i17.SharedPreferences>()));
  gh.lazySingleton<_i31.CartRemoteDataSource>(
      () => _i32.CartRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i33.CartRepository>(() => _i34.CartRepositoryImp(
        gh<_i29.CartLocalDataSource>(),
        gh<_i31.CartRemoteDataSource>(),
        baseLocalDataSource: gh<_i26.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i35.GetCartUseCase>(
      () => _i35.GetCartUseCase(gh<_i33.CartRepository>()));
  gh.lazySingleton<_i36.HomeLocalDataSource>(() => _i37.HomeLocalDataSourceImp(
      sharedPreferences: gh<_i17.SharedPreferences>()));
  gh.lazySingleton<_i38.HomeRepository>(() => _i39.HomeRepositoryImp(
        gh<_i36.HomeLocalDataSource>(),
        gh<_i4.HomeRemoteDataSource>(),
        baseLocalDataSource: gh<_i26.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i40.LoginLocalDataSource>(() =>
      _i41.LoginLocalDataSourceImp(
          sharedPreferences: gh<_i17.SharedPreferences>()));
  gh.lazySingleton<_i42.LoginRepository>(() => _i43.LoginRepositoryImp(
        gh<_i40.LoginLocalDataSource>(),
        gh<_i6.LoginRemoteDataSource>(),
        baseLocalDataSource: gh<_i26.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i44.LoginUseCase>(
      () => _i44.LoginUseCase(gh<_i42.LoginRepository>()));
  gh.lazySingleton<_i45.OTPLocalDataSource>(() => _i46.OTPLocalDataSourceImp(
      sharedPreferences: gh<_i17.SharedPreferences>()));
  gh.lazySingleton<_i47.OTPRepository>(() => _i48.OTPRepositoryImp(
        gh<_i45.OTPLocalDataSource>(),
        gh<_i9.OTPRemoteDataSource>(),
        baseLocalDataSource: gh<_i26.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i49.OnboardingLocalDataSource>(() =>
      _i50.OnboardingLocalDataSourceImp(
          sharedPreferences: gh<_i17.SharedPreferences>()));
  gh.lazySingleton<_i51.OnboardingRepository>(
      () => _i52.OnboardingRepositoryImp(
            gh<_i49.OnboardingLocalDataSource>(),
            gh<_i11.OnboardingRemoteDataSource>(),
            baseLocalDataSource: gh<_i26.BaseLocalDataSource>(),
            networkInfo: gh<_i8.NetworkInfo>(),
          ));
  gh.lazySingleton<_i53.PasswordLocalDataSource>(() =>
      _i54.PasswordLocalDataSourceImp(
          sharedPreferences: gh<_i17.SharedPreferences>()));
  gh.lazySingleton<_i55.PasswordRepository>(() => _i56.PasswordRepositoryImp(
        gh<_i53.PasswordLocalDataSource>(),
        gh<_i13.PasswordRemoteDataSource>(),
        baseLocalDataSource: gh<_i26.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i57.ProductDetailsLocalDataSource>(() =>
      _i58.ProductDetailsLocalDataSourceImp(
          sharedPreferences: gh<_i17.SharedPreferences>()));
  gh.lazySingleton<_i59.ProductDetailsRepository>(
      () => _i60.ProductDetailsRepositoryImp(
            gh<_i57.ProductDetailsLocalDataSource>(),
            gh<_i15.ProductDetailsRemoteDataSource>(),
            baseLocalDataSource: gh<_i26.BaseLocalDataSource>(),
            networkInfo: gh<_i8.NetworkInfo>(),
          ));
  gh.lazySingleton<_i61.RemoveFromCartUseCase>(
      () => _i61.RemoveFromCartUseCase(gh<_i33.CartRepository>()));
  gh.lazySingleton<_i62.ResetPasswordUseCase>(
      () => _i62.ResetPasswordUseCase(gh<_i55.PasswordRepository>()));
  gh.lazySingleton<_i63.SendCodeUseCase>(
      () => _i63.SendCodeUseCase(gh<_i47.OTPRepository>()));
  gh.lazySingleton<_i64.SignUpRepository>(() => _i65.SignUpRepositoryImp(
        gh<_i18.SignUpLocalDataSource>(),
        gh<_i20.SignUpRemoteDataSource>(),
        baseLocalDataSource: gh<_i26.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i66.SignUpUseCase>(
      () => _i66.SignUpUseCase(gh<_i64.SignUpRepository>()));
  gh.lazySingleton<_i67.SplashRepository>(() => _i68.SplashRepositoryImp(
        gh<_i24.SplashRemoteDataSource>(),
        gh<_i22.SplashLocalDataSource>(),
        baseLocalDataSource: gh<_i26.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i69.AddToCartUseCase>(
      () => _i69.AddToCartUseCase(gh<_i33.CartRepository>()));
  gh.lazySingleton<_i70.AddToCartUseCase>(
      () => _i70.AddToCartUseCase(gh<_i59.ProductDetailsRepository>()));
  gh.lazySingleton<_i71.ApplyPromoCodeUseCase>(
      () => _i71.ApplyPromoCodeUseCase(gh<_i33.CartRepository>()));
  gh.lazySingleton<_i72.CartBloc>(() => _i72.CartBloc(
        gh<_i35.GetCartUseCase>(),
        gh<_i69.AddToCartUseCase>(),
        gh<_i61.RemoveFromCartUseCase>(),
        gh<_i71.ApplyPromoCodeUseCase>(),
      ));
  gh.lazySingleton<_i73.ChangeFavoriteStatusUseCase>(() =>
      _i73.ChangeFavoriteStatusUseCase(gh<_i59.ProductDetailsRepository>()));
  gh.lazySingleton<_i74.ChangeOnboardingStatusUseCase>(() =>
      _i74.ChangeOnboardingStatusUseCase(gh<_i51.OnboardingRepository>()));
  gh.lazySingleton<_i75.CheckTokenUseCase>(
      () => _i75.CheckTokenUseCase(gh<_i67.SplashRepository>()));
  gh.lazySingleton<_i76.GetCategoriesUseCase>(
      () => _i76.GetCategoriesUseCase(gh<_i38.HomeRepository>()));
  gh.lazySingleton<_i77.GetFrequentlyOrderedProductsUseCase>(() =>
      _i77.GetFrequentlyOrderedProductsUseCase(gh<_i38.HomeRepository>()));
  gh.lazySingleton<_i78.GetProductUseCase>(
      () => _i78.GetProductUseCase(gh<_i59.ProductDetailsRepository>()));
  gh.lazySingleton<_i79.GetShowOnBoardingStatusUseCase>(
      () => _i79.GetShowOnBoardingStatusUseCase(gh<_i67.SplashRepository>()));
  gh.factory<_i80.HomeBloc>(() => _i80.HomeBloc(
        gh<_i76.GetCategoriesUseCase>(),
        gh<_i77.GetFrequentlyOrderedProductsUseCase>(),
      ));
  gh.factory<_i81.LoginBloc>(() => _i81.LoginBloc(gh<_i44.LoginUseCase>()));
  gh.factory<_i82.OTPBloc>(() => _i82.OTPBloc(gh<_i63.SendCodeUseCase>()));
  gh.factory<_i83.OnboardingBloc>(
      () => _i83.OnboardingBloc(gh<_i74.ChangeOnboardingStatusUseCase>()));
  gh.factory<_i84.PasswordBloc>(
      () => _i84.PasswordBloc(gh<_i62.ResetPasswordUseCase>()));
  gh.lazySingleton<_i85.ProductDetailsBloc>(() => _i85.ProductDetailsBloc(
        gh<_i70.AddToCartUseCase>(),
        gh<_i73.ChangeFavoriteStatusUseCase>(),
        gh<_i78.GetProductUseCase>(),
      ));
  gh.factory<_i86.SignUpBloc>(() => _i86.SignUpBloc(gh<_i66.SignUpUseCase>()));
  gh.factory<_i87.SplashBloc>(() => _i87.SplashBloc(
        gh<_i75.CheckTokenUseCase>(),
        gh<_i79.GetShowOnBoardingStatusUseCase>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i88.RegisterModule {}
