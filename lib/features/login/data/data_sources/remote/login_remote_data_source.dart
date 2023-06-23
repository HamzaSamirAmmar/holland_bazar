import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/models/authenticated_user_model.dart';

abstract class LoginRemoteDataSource extends BaseRemoteDataSource {
  Future<AuthenticatedUserModel> login({
    required String number,
    required String password,
  });
}
