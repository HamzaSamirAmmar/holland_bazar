import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/util/constants.dart';

import 'password_remote_data_source.dart';

@LazySingleton(as: PasswordRemoteDataSource)
class PasswordRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements PasswordRemoteDataSource {
  PasswordRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<void> resetPassword({
    required String password,
  }) async =>
      await performPostRequest<void>(
        endpoint: Endpoints.resetPassword,
        data: RequestBody.resetPassword(
          password: password,
        ),
      );
}
