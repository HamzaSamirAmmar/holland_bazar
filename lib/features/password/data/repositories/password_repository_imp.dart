import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_local_data_source.dart';
import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/password_repository.dart';
import '../data_sources/local/password_local_data_source.dart';
import '../data_sources/remote/password_remote_data_source.dart';

@LazySingleton(as: PasswordRepository)
class PasswordRepositoryImp extends BaseRepositoryImpl
    implements PasswordRepository {
  final PasswordLocalDataSource _local;
  final PasswordRemoteDataSource _remote;

  PasswordRepositoryImp(
    this._local,
    this._remote, {
    required BaseLocalDataSource baseLocalDataSource,
    required NetworkInfo networkInfo,
  }) : super(
          baseLocalDataSource: baseLocalDataSource,
          networkInfo: networkInfo,
        );

  @override
  Future<Either<Failure, void>> resetPassword({
    required String password,
  }) async =>
      await requestWithToken(
        (token) => _remote.resetPassword(
          token: token,
          password: password,
          phone: baseLocalDataSource.phone,
        ),
      );
}
