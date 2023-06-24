import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_local_data_source.dart';
import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/sign_up_repository.dart';
import '../data_sources/local/sign_up_local_data_source.dart';
import '../data_sources/remote/sign_up_remote_data_source.dart';

@LazySingleton(as: SignUpRepository)
class SignUpRepositoryImp extends BaseRepositoryImpl
    implements SignUpRepository {
  final SignUpLocalDataSource _local;
  final SignUpRemoteDataSource _http;

  SignUpRepositoryImp(
    this._local,
    this._http, {
    required BaseLocalDataSource baseLocalDataSource,
    required NetworkInfo networkInfo,
  }) : super(
          baseLocalDataSource: baseLocalDataSource,
          networkInfo: networkInfo,
        );

  @override
  Future<Either<Failure, void>> signUp({
    required String number,
    required String name,
    required String address,
  }) async =>
      await requestWithToken(
            (_) => _http.signUp(
          number: number,
          name: name,
          address: address,
        ),
      );
}
