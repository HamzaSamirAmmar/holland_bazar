import '../../../../../core/data/base_remote_data_source.dart';

abstract class PasswordRemoteDataSource extends BaseRemoteDataSource {
  Future<void> resetPassword({
    required String password,
  });
}
