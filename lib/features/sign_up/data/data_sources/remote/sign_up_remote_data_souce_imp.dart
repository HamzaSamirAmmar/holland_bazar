import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/models/authenticated_user_model.dart';
import '../../../../../core/util/constants.dart';

import 'sign_up_remote_data_source.dart';

@LazySingleton(as: SignUpRemoteDataSource)
class SignUpRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements SignUpRemoteDataSource {
  SignUpRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<AuthenticatedUserModel> signUp({
    required String number,
    required String name,
    required String address,
  }) async =>
      await performPostRequest<AuthenticatedUserModel>(
        endpoint: Endpoints.signUp,
        data: RequestBody.signUp(
          number: number,
          name: name,
          address: address,
        ),
      );
}
