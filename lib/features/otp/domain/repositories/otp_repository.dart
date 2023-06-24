import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';

abstract class OTPRepository extends BaseRepository {
  Future<Either<Failure, void>> sendCode({
    required String number,
  });
}
