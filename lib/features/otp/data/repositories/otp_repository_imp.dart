import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_local_data_source.dart';
import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/otp_repository.dart';
import '../data_sources/local/otp_local_data_source.dart';
import '../data_sources/remote/otp_remote_data_source.dart';

@LazySingleton(as: OTPRepository)
class OTPRepositoryImp extends BaseRepositoryImpl implements OTPRepository {
  final OTPLocalDataSource _local;
  final OTPRemoteDataSource _remote;

  OTPRepositoryImp(
    this._local,
    this._remote, {
    required BaseLocalDataSource baseLocalDataSource,
    required NetworkInfo networkInfo,
  }) : super(
          baseLocalDataSource: baseLocalDataSource,
          networkInfo: networkInfo,
        );

  @override
  Future<Either<Failure, void>> sendCode({
    required String number,
  }) async =>
      await requestWithToken(
        (token) => _remote.sendCode(
          token: token,
          phone: baseLocalDataSource.phone,
          number: number,
        ),
      );
}
