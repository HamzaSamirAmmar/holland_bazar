import 'package:dartz/dartz.dart';
import 'package:holland_bazar/core/error/failures.dart';

import '../../../../core/data/base_repository.dart';

abstract class OnboardingRepository extends BaseRepository {
  Future<Either<Failure, void>> changeOnboardingStatus();
}
