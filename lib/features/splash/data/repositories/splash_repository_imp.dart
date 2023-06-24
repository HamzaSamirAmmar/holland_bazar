import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/splash_repository.dart';
import '../data_sources/local/splash_local_data_source.dart';
import '../data_sources/remote/splash_remote_data_source.dart';

@LazySingleton(as: SplashRepository)
class SplashRepositoryImp extends BaseRepositoryImpl
    implements SplashRepository {
  final SplashRemoteDataSource _remote;
  final SplashLocalDataSource _local;

  SplashRepositoryImp(
    this._remote,
    this._local, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, bool>> checkToken() async => await localRequest(
        () => Future.value(
          baseLocalDataSource.token.isNotEmpty,
        ),
      );

  @override
  Future<Either<Failure, bool>> getShowOnBoardingStatus() async =>
      await localRequest(
        () => Future.value(
          _local.getShowOnBoardingStatus(),
        ),
      );
}
