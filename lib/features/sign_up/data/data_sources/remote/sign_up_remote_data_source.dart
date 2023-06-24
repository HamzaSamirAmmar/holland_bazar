import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/models/authenticated_user_model.dart';

abstract class SignUpRemoteDataSource extends BaseRemoteDataSource {
  Future<AuthenticatedUserModel> signUp({
    required String number,
    required String name,
    required String address,
  });
}
