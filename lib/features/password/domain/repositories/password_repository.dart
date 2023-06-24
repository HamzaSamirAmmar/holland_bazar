import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';

abstract class PasswordRepository extends BaseRepository {
  Future<Either<Failure, void>> resetPassword({
    required String password,
  });
}
