import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/onboarding_repository.dart';
import '../data_sources/local/onboarding_local_data_source.dart';
import '../data_sources/remote/onboarding_remote_data_source.dart';

@LazySingleton(as: OnboardingRepository)
class OnboardingRepositoryImp extends BaseRepositoryImpl
    implements OnboardingRepository {
  final OnboardingLocalDataSource _local;
  final OnboardingRemoteDataSource _remote;

  OnboardingRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, void>> changeOnboardingStatus() async =>
      await localRequest<void>(
        () => _local.changeOnboardingStatus(),
      );
}
