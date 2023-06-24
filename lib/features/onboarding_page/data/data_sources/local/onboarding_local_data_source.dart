import '../../../../../core/data/base_local_data_source.dart';

abstract class OnboardingLocalDataSource extends BaseLocalDataSource {
  Future<void> changeOnboardingStatus();
}
