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
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import 'core/data/base_local_data_source.dart' as _i28;
import 'core/data/base_remote_data_source.dart' as _i29;
import 'core/data/base_repository.dart' as _i30;
import 'core/network/network_info.dart' as _i8;
import 'features/cart/data/data_sources/local/cart_local_data_source.dart'
    as _i31;
import 'features/cart/data/data_sources/local/cart_local_data_source_imp.dart'
    as _i32;
import 'features/cart/data/data_sources/remote/cart_remote_data_source.dart'
    as _i33;
import 'features/cart/data/data_sources/remote/cart_remote_data_source_imp.dart'
    as _i34;
import 'features/cart/data/repositories/cart_repository_imp.dart' as _i36;
import 'features/cart/domain/repositories/cart_repository.dart' as _i35;
import 'features/cart/domain/use_cases/add_to_cart_use_case.dart' as _i82;
import 'features/cart/domain/use_cases/apply_promo_code_use_case.dart' as _i84;
import 'features/cart/domain/use_cases/get_cart_use_case.dart' as _i43;
import 'features/cart/domain/use_cases/remove_from_cart_use_case.dart' as _i74;
import 'features/cart/presentation/bloc/cart_bloc.dart' as _i85;
import 'features/categories/data/data_sources/local/categories_local_data_source.dart'
    as _i37;
import 'features/categories/data/data_sources/local/categories_local_data_source_imp.dart'
    as _i38;
import 'features/categories/data/data_sources/remote/categories_remote_data_source.dart'
    as _i39;
import 'features/categories/data/data_sources/remote/categories_remote_data_source_imp.dart'
    as _i40;
import 'features/categories/data/repositories/categories_repository_imp.dart'
    as _i42;
import 'features/categories/domain/repositories/categories_repository.dart'
    as _i41;
import 'features/categories/domain/use_cases/get_popular_products_use_case.dart'
    as _i44;
import 'features/categories/presentation/bloc/categories_bloc.dart' as _i103;
import 'features/home/data/data_sources/local/home_local_data_source.dart'
    as _i45;
import 'features/home/data/data_sources/local/home_local_data_source_imp.dart'
    as _i46;
import 'features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i4;
import 'features/home/data/data_sources/remote/home_remote_data_source_imp.dart'
    as _i5;
import 'features/home/data/repositories/home_repository_imp.dart' as _i48;
import 'features/home/domain/repositories/home_repository.dart' as _i47;
import 'features/home/domain/use_cases/get_categories_use_case.dart' as _i90;
import 'features/home/domain/use_cases/get_frequently_ordered_products_use_case.dart'
    as _i91;
import 'features/home/presentation/bloc/home_bloc.dart' as _i94;
import 'features/login/data/data_sources/local/login_local_data_source.dart'
    as _i49;
import 'features/login/data/data_sources/local/login_local_data_source_imp.dart'
    as _i50;
import 'features/login/data/data_sources/remote/login_remote_data_source.dart'
    as _i6;
import 'features/login/data/data_sources/remote/login_remote_data_source_imp.dart'
    as _i7;
import 'features/login/data/repositories/login_repository_imp.dart' as _i52;
import 'features/login/domain/repositories/login_repository.dart' as _i51;
import 'features/login/domain/use_cases/login_use_case.dart' as _i53;
import 'features/login/presentation/bloc/login_bloc.dart' as _i95;
import 'features/offer/data/data_sources/local/offer_local_data_source.dart'
    as _i58;
import 'features/offer/data/data_sources/local/offer_local_data_source_imp.dart'
    as _i59;
import 'features/offer/data/data_sources/remote/offer_remote_data_source.dart'
    as _i11;
import 'features/offer/data/data_sources/remote/offer_remote_data_source_imp.dart'
    as _i12;
import 'features/offer/data/repositories/offer_repository_imp.dart' as _i61;
import 'features/offer/domain/repositories/offer_repository.dart' as _i60;
import 'features/offer/domain/use_cases/get_all_products_use_case.dart' as _i89;
import 'features/offer/presentation/bloc/offer_bloc.dart' as _i97;
import 'features/onboarding_page/data/data_sources/local/onboarding_local_data_source.dart'
    as _i62;
import 'features/onboarding_page/data/data_sources/local/onboarding_local_data_source_imp.dart'
    as _i63;
import 'features/onboarding_page/data/data_sources/remote/onboarding_remote_data_source.dart'
    as _i13;
import 'features/onboarding_page/data/data_sources/remote/onboarding_remote_data_source_imp.dart'
    as _i14;
import 'features/onboarding_page/data/repositories/onboarding_repository_imp.dart'
    as _i65;
import 'features/onboarding_page/domain/repositories/onboarding_repository.dart'
    as _i64;
import 'features/onboarding_page/domain/use_cases/change_onboarding_status_use_case.dart'
    as _i87;
import 'features/onboarding_page/presentation/bloc/onboarding_bloc.dart'
    as _i98;
import 'features/otp/data/data_sources/local/otp_local_data_source.dart'
    as _i54;
import 'features/otp/data/data_sources/local/otp_local_data_source_imp.dart'
    as _i55;
import 'features/otp/data/data_sources/remote/otp_remote_data_souce_imp.dart'
    as _i10;
import 'features/otp/data/data_sources/remote/otp_remote_data_source.dart'
    as _i9;
import 'features/otp/data/repositories/otp_repository_imp.dart' as _i57;
import 'features/otp/domain/repositories/otp_repository.dart' as _i56;
import 'features/otp/domain/use_cases/send_code_use_case.dart' as _i76;
import 'features/otp/presentation/bloc/otp_bloc.dart' as _i96;
import 'features/password/data/data_sources/local/password_local_data_source.dart'
    as _i66;
import 'features/password/data/data_sources/local/password_local_data_source_imp.dart'
    as _i67;
import 'features/password/data/data_sources/remote/password_remote_data_souce_imp.dart'
    as _i16;
import 'features/password/data/data_sources/remote/password_remote_data_source.dart'
    as _i15;
import 'features/password/data/repositories/password_repository_imp.dart'
    as _i69;
import 'features/password/domain/repositories/password_repository.dart' as _i68;
import 'features/password/domain/use_cases/reset_password_use_case.dart'
    as _i75;
import 'features/password/presentation/bloc/password_bloc.dart' as _i99;
import 'features/product_details/data/data_sources/local/product_details_local_data_source.dart'
    as _i70;
import 'features/product_details/data/data_sources/local/product_details_local_data_source_imp.dart'
    as _i71;
import 'features/product_details/data/data_sources/remote/product_details_remote_data_source.dart'
    as _i17;
import 'features/product_details/data/data_sources/remote/product_details_remote_data_source_imp.dart'
    as _i18;
import 'features/product_details/data/repositories/product_details_repository_imp.dart'
    as _i73;
import 'features/product_details/domain/repositories/product_details_repository.dart'
    as _i72;
import 'features/product_details/domain/use_cases/add_to_cart_use_case.dart'
    as _i83;
import 'features/product_details/domain/use_cases/change_product_favorite_status_use_case.dart'
    as _i86;
import 'features/product_details/domain/use_cases/get_product_use_case.dart'
    as _i92;
import 'features/product_details/presentation/bloc/product_details_bloc.dart'
    as _i100;
import 'features/sign_up/data/data_sources/local/sign_up_local_data_source.dart'
    as _i20;
import 'features/sign_up/data/data_sources/local/sign_up_local_data_source_imp.dart'
    as _i21;
import 'features/sign_up/data/data_sources/remote/sign_up_remote_data_souce_imp.dart'
    as _i23;
import 'features/sign_up/data/data_sources/remote/sign_up_remote_data_source.dart'
    as _i22;
import 'features/sign_up/data/repositories/sign_up_repository_imp.dart' as _i78;
import 'features/sign_up/domain/repositories/sign_up_repository.dart' as _i77;
import 'features/sign_up/domain/use_cases/sign_up_use_case.dart' as _i79;
import 'features/sign_up/presentation/bloc/sign_up_bloc.dart' as _i101;
import 'features/splash/data/data_sources/local/splash_local_data_source.dart'
    as _i24;
import 'features/splash/data/data_sources/local/splash_local_data_source_imp.dart'
    as _i25;
import 'features/splash/data/data_sources/remote/splash_remote_data_source.dart'
    as _i26;
import 'features/splash/data/data_sources/remote/splash_remote_data_source_imp.dart'
    as _i27;
import 'features/splash/data/repositories/splash_repository_imp.dart' as _i81;
import 'features/splash/domain/repositories/splash_repository.dart' as _i80;
import 'features/splash/domain/use_cases/check_token_use_case.dart' as _i88;
import 'features/splash/domain/use_cases/get_show_on_boarding_status_use_case.dart'
    as _i93;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i102;
import 'injection.dart' as _i104;

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
  gh.lazySingleton<_i11.OfferRemoteDataSource>(
      () => _i12.OfferRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i13.OnboardingRemoteDataSource>(
      () => _i14.OnboardingRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i15.PasswordRemoteDataSource>(
      () => _i16.PasswordRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i17.ProductDetailsRemoteDataSource>(
      () => _i18.ProductDetailsRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  await gh.factoryAsync<_i19.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i20.SignUpLocalDataSource>(() =>
      _i21.SignUpLocalDataSourceImp(
          sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i22.SignUpRemoteDataSource>(
      () => _i23.SignUpRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i24.SplashLocalDataSource>(() =>
      _i25.SplashLocalDataSourceImp(
          sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i26.SplashRemoteDataSource>(
      () => _i27.SplashRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i28.BaseLocalDataSource>(() => _i28.BaseLocalDataSourceImp(
      sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i29.BaseRemoteDataSource>(
      () => _i29.BaseRemoteDataSourceImpl(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i30.BaseRepository>(() => _i30.BaseRepositoryImpl(
        baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i31.CartLocalDataSource>(() => _i32.CartLocalDataSourceImp(
      sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i33.CartRemoteDataSource>(
      () => _i34.CartRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i35.CartRepository>(() => _i36.CartRepositoryImp(
        gh<_i31.CartLocalDataSource>(),
        gh<_i33.CartRemoteDataSource>(),
        baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i37.CategoriesLocalDataSource>(() =>
      _i38.CategoriesLocalDataSourceImp(
          sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i39.CategoriesRemoteDataSource>(
      () => _i40.CategoriesRemoteDataSourceImp(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i41.CategoriesRepository>(
      () => _i42.CategoriesRepositoryImp(
            gh<_i39.CategoriesRemoteDataSource>(),
            gh<_i37.CategoriesLocalDataSource>(),
            baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
            networkInfo: gh<_i8.NetworkInfo>(),
          ));
  gh.lazySingleton<_i43.GetCartUseCase>(
      () => _i43.GetCartUseCase(gh<_i35.CartRepository>()));
  gh.lazySingleton<_i44.GetPopularProductsUseCase>(
      () => _i44.GetPopularProductsUseCase(gh<_i41.CategoriesRepository>()));
  gh.lazySingleton<_i45.HomeLocalDataSource>(() => _i46.HomeLocalDataSourceImp(
      sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i47.HomeRepository>(() => _i48.HomeRepositoryImp(
        gh<_i45.HomeLocalDataSource>(),
        gh<_i4.HomeRemoteDataSource>(),
        baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i49.LoginLocalDataSource>(() =>
      _i50.LoginLocalDataSourceImp(
          sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i51.LoginRepository>(() => _i52.LoginRepositoryImp(
        gh<_i49.LoginLocalDataSource>(),
        gh<_i6.LoginRemoteDataSource>(),
        baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i53.LoginUseCase>(
      () => _i53.LoginUseCase(gh<_i51.LoginRepository>()));
  gh.lazySingleton<_i54.OTPLocalDataSource>(() => _i55.OTPLocalDataSourceImp(
      sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i56.OTPRepository>(() => _i57.OTPRepositoryImp(
        gh<_i54.OTPLocalDataSource>(),
        gh<_i9.OTPRemoteDataSource>(),
        baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i58.OfferLocalDataSource>(() =>
      _i59.OfferLocalDataSourceImp(
          sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i60.OfferRepository>(() => _i61.OfferRepositoryImp(
        gh<_i11.OfferRemoteDataSource>(),
        gh<_i58.OfferLocalDataSource>(),
        baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i62.OnboardingLocalDataSource>(() =>
      _i63.OnboardingLocalDataSourceImp(
          sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i64.OnboardingRepository>(
      () => _i65.OnboardingRepositoryImp(
            gh<_i62.OnboardingLocalDataSource>(),
            gh<_i13.OnboardingRemoteDataSource>(),
            baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
            networkInfo: gh<_i8.NetworkInfo>(),
          ));
  gh.lazySingleton<_i66.PasswordLocalDataSource>(() =>
      _i67.PasswordLocalDataSourceImp(
          sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i68.PasswordRepository>(() => _i69.PasswordRepositoryImp(
        gh<_i66.PasswordLocalDataSource>(),
        gh<_i15.PasswordRemoteDataSource>(),
        baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i70.ProductDetailsLocalDataSource>(() =>
      _i71.ProductDetailsLocalDataSourceImp(
          sharedPreferences: gh<_i19.SharedPreferences>()));
  gh.lazySingleton<_i72.ProductDetailsRepository>(
      () => _i73.ProductDetailsRepositoryImp(
            gh<_i70.ProductDetailsLocalDataSource>(),
            gh<_i17.ProductDetailsRemoteDataSource>(),
            baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
            networkInfo: gh<_i8.NetworkInfo>(),
          ));
  gh.lazySingleton<_i74.RemoveFromCartUseCase>(
      () => _i74.RemoveFromCartUseCase(gh<_i35.CartRepository>()));
  gh.lazySingleton<_i75.ResetPasswordUseCase>(
      () => _i75.ResetPasswordUseCase(gh<_i68.PasswordRepository>()));
  gh.lazySingleton<_i76.SendCodeUseCase>(
      () => _i76.SendCodeUseCase(gh<_i56.OTPRepository>()));
  gh.lazySingleton<_i77.SignUpRepository>(() => _i78.SignUpRepositoryImp(
        gh<_i20.SignUpLocalDataSource>(),
        gh<_i22.SignUpRemoteDataSource>(),
        baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i79.SignUpUseCase>(
      () => _i79.SignUpUseCase(gh<_i77.SignUpRepository>()));
  gh.lazySingleton<_i80.SplashRepository>(() => _i81.SplashRepositoryImp(
        gh<_i26.SplashRemoteDataSource>(),
        gh<_i24.SplashLocalDataSource>(),
        baseLocalDataSource: gh<_i28.BaseLocalDataSource>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i82.AddToCartUseCase>(
      () => _i82.AddToCartUseCase(gh<_i35.CartRepository>()));
  gh.lazySingleton<_i83.AddToCartUseCase>(
      () => _i83.AddToCartUseCase(gh<_i72.ProductDetailsRepository>()));
  gh.lazySingleton<_i84.ApplyPromoCodeUseCase>(
      () => _i84.ApplyPromoCodeUseCase(gh<_i35.CartRepository>()));
  gh.lazySingleton<_i85.CartBloc>(() => _i85.CartBloc(
        gh<_i43.GetCartUseCase>(),
        gh<_i82.AddToCartUseCase>(),
        gh<_i74.RemoveFromCartUseCase>(),
        gh<_i84.ApplyPromoCodeUseCase>(),
      ));
  gh.lazySingleton<_i86.ChangeFavoriteStatusUseCase>(() =>
      _i86.ChangeFavoriteStatusUseCase(gh<_i72.ProductDetailsRepository>()));
  gh.lazySingleton<_i87.ChangeOnboardingStatusUseCase>(() =>
      _i87.ChangeOnboardingStatusUseCase(gh<_i64.OnboardingRepository>()));
  gh.lazySingleton<_i88.CheckTokenUseCase>(
      () => _i88.CheckTokenUseCase(gh<_i80.SplashRepository>()));
  gh.lazySingleton<_i89.GetAllProductsUseCase>(
      () => _i89.GetAllProductsUseCase(gh<_i60.OfferRepository>()));
  gh.lazySingleton<_i90.GetCategoriesUseCase>(
      () => _i90.GetCategoriesUseCase(gh<_i47.HomeRepository>()));
  gh.lazySingleton<_i91.GetFrequentlyOrderedProductsUseCase>(() =>
      _i91.GetFrequentlyOrderedProductsUseCase(gh<_i47.HomeRepository>()));
  gh.lazySingleton<_i92.GetProductUseCase>(
      () => _i92.GetProductUseCase(gh<_i72.ProductDetailsRepository>()));
  gh.lazySingleton<_i93.GetShowOnBoardingStatusUseCase>(
      () => _i93.GetShowOnBoardingStatusUseCase(gh<_i80.SplashRepository>()));
  gh.factory<_i94.HomeBloc>(() => _i94.HomeBloc(
        gh<_i90.GetCategoriesUseCase>(),
        gh<_i91.GetFrequentlyOrderedProductsUseCase>(),
      ));
  gh.factory<_i95.LoginBloc>(() => _i95.LoginBloc(gh<_i53.LoginUseCase>()));
  gh.factory<_i96.OTPBloc>(() => _i96.OTPBloc(gh<_i76.SendCodeUseCase>()));
  gh.factory<_i97.OfferBloc>(
      () => _i97.OfferBloc(gh<_i89.GetAllProductsUseCase>()));
  gh.factory<_i98.OnboardingBloc>(
      () => _i98.OnboardingBloc(gh<_i87.ChangeOnboardingStatusUseCase>()));
  gh.factory<_i99.PasswordBloc>(
      () => _i99.PasswordBloc(gh<_i75.ResetPasswordUseCase>()));
  gh.lazySingleton<_i100.ProductDetailsBloc>(() => _i100.ProductDetailsBloc(
        gh<_i83.AddToCartUseCase>(),
        gh<_i86.ChangeFavoriteStatusUseCase>(),
        gh<_i92.GetProductUseCase>(),
      ));
  gh.factory<_i101.SignUpBloc>(
      () => _i101.SignUpBloc(gh<_i79.SignUpUseCase>()));
  gh.factory<_i102.SplashBloc>(() => _i102.SplashBloc(
        gh<_i88.CheckTokenUseCase>(),
        gh<_i93.GetShowOnBoardingStatusUseCase>(),
      ));
  gh.factory<_i103.CategoriesBloc>(() => _i103.CategoriesBloc(
        gh<_i90.GetCategoriesUseCase>(),
        gh<_i44.GetPopularProductsUseCase>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i104.RegisterModule {}
