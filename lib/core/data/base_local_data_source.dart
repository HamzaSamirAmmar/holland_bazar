import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';
import '../util/constants.dart';

abstract class BaseLocalDataSource {
  String get token;

  String get phone;

  Future<void> setToken(String token);

  Future<void> setPhone(String phone);

  Future<void> logout();
}

@LazySingleton(as: BaseLocalDataSource)
class BaseLocalDataSourceImp implements BaseLocalDataSource {
  final SharedPreferences sharedPreferences;

  BaseLocalDataSourceImp({
    required this.sharedPreferences,
  });

  @override
  String get token =>
      sharedPreferences.getString(LocalStorageKeys.apiToken) ?? "";

  @override
  Future<void> logout() async {
    await sharedPreferences.clear();
  }

  @override
  Future<void> setToken(String token) async {
    await sharedPreferences.setString(LocalStorageKeys.apiToken, token);
  }

  @override
  String get phone => sharedPreferences.getString(LocalStorageKeys.phone) ?? "";

  @override
  Future<void> setPhone(String phone) async {
    await sharedPreferences.setString(LocalStorageKeys.phone, phone);
  }
}
