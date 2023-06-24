import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'sign_up_local_data_source.dart';

@LazySingleton(as: SignUpLocalDataSource)
class SignUpLocalDataSourceImp extends BaseLocalDataSourceImp
    implements SignUpLocalDataSource {
  SignUpLocalDataSourceImp({
    required SharedPreferences sharedPreferences,
  }) : super(
          sharedPreferences: sharedPreferences,
        );
}
