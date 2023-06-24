import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/util/constants.dart';

import 'otp_remote_data_source.dart';

@LazySingleton(as: OTPRemoteDataSource)
class OTPRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements OTPRemoteDataSource {
  OTPRemoteDataSourceImp({required Dio dio}) : super(dio: dio);

  @override
  Future<void> sendCode({
    required String number,
  }) async =>
      await performPostRequest<void>(
        endpoint: Endpoints.sendCode,
        data: RequestBody.sendCode(
          number: number,
        ),
      );
}
