import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'onboarding_remote_data_source.dart';

@LazySingleton(as: OnboardingRemoteDataSource)
class OnboardingRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements OnboardingRemoteDataSource {
  OnboardingRemoteDataSourceImp({required super.dio});
}
