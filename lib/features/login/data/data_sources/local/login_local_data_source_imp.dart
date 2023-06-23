import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'login_local_data_source.dart';

@LazySingleton(as: LoginLocalDataSource)
class LoginLocalDataSourceImp extends BaseLocalDataSourceImp
    implements LoginLocalDataSource {
  LoginLocalDataSourceImp({required super.sharedPreferences});
}
