import 'package:holland_bazar/core/util/constants.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'onboarding_local_data_source.dart';

@LazySingleton(as: OnboardingLocalDataSource)
class OnboardingLocalDataSourceImp extends BaseLocalDataSourceImp
    implements OnboardingLocalDataSource {
  OnboardingLocalDataSourceImp({required super.sharedPreferences});

  @override
  Future<void> changeOnboardingStatus() async {
    await sharedPreferences.setBool(LocalStorageKeys.onBoardingStatus, true);
  }
}
