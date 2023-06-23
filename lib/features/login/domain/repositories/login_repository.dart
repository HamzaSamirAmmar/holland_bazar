import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';

abstract class LoginRepository extends BaseRepository {
  Future<Either<Failure, void>> login({
    required String number,
    required String password,
  });
}
