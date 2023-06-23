import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/login_repository.dart';
import '../data_sources/local/login_local_data_source.dart';
import '../data_sources/remote/login_remote_data_source.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImp extends BaseRepositoryImpl implements LoginRepository {
  final LoginLocalDataSource _local;
  final LoginRemoteDataSource _remote;

  LoginRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, void>> login({
    required String number,
    required String password,
  }) async =>
      await requestWithToken<void>(
        (_) async {
          final user = await _remote.login(
            number: number,
            password: password,
          );
          await _local.setToken(user.token);
          return;
        },
      );
}
