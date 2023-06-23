import 'package:holland_bazar/core/util/constants.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/models/authenticated_user_model.dart';
import 'login_remote_data_source.dart';

@LazySingleton(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements LoginRemoteDataSource {
  LoginRemoteDataSourceImp({required super.dio});

  @override
  Future<AuthenticatedUserModel> login({
    required String number,
    required String password,
  }) async =>
      await performPostRequest<AuthenticatedUserModel>(
        endpoint: Endpoints.login,
        data: RequestBody.login(
          number: number,
          password: password,
        ),
      );
}
