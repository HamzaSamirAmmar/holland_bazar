import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'password_local_data_source.dart';

@LazySingleton(as: PasswordLocalDataSource)
class PasswordLocalDataSourceImp extends BaseLocalDataSourceImp
    implements PasswordLocalDataSource {
  PasswordLocalDataSourceImp({
    required SharedPreferences sharedPreferences,
  }) : super(
          sharedPreferences: sharedPreferences,
        );
}
