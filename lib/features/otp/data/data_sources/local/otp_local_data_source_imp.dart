import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'otp_local_data_source.dart';

@LazySingleton(as: OTPLocalDataSource)
class OTPLocalDataSourceImp extends BaseLocalDataSourceImp
    implements OTPLocalDataSource {
  OTPLocalDataSourceImp({
    required SharedPreferences sharedPreferences,
  }) : super(
          sharedPreferences: sharedPreferences,
        );
}
