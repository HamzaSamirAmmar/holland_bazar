import '../../../../../core/data/base_remote_data_source.dart';

abstract class OTPRemoteDataSource extends BaseRemoteDataSource {
  Future<void> sendCode({
    required String number,
  });
}
