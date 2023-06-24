import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';

abstract class SignUpRepository extends BaseRepository {
  Future<Either<Failure, void>> signUp({
    required String number,
    required String name,
    required String address,
  });
}
