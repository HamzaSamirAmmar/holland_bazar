import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/onboarding_repository.dart';

@lazySingleton
class ChangeOnboardingStatusUseCase implements UseCase<void, NoParams> {
  final OnboardingRepository _repository;

  ChangeOnboardingStatusUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async =>
      await _repository.changeOnboardingStatus();
}
