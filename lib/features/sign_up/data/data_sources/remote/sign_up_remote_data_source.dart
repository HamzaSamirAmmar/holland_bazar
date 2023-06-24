import '../../../../../core/data/base_remote_data_source.dart';

abstract class SignUpRemoteDataSource extends BaseRemoteDataSource {
  Future<void> signUp({
    required String number,
    required String name,
    required String address,
  });
}
