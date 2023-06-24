import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/password_repository.dart';

@lazySingleton
class ResetPasswordUseCase implements UseCase<void, ResetPasswordUseCaseParams> {
  final PasswordRepository _repository;

  ResetPasswordUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ResetPasswordUseCaseParams params) async =>
      await _repository.resetPassword(
        password: params.password,
      );
}

class ResetPasswordUseCaseParams extends Equatable {
  final String password;

  const ResetPasswordUseCaseParams({
    required this.password,
  });

  @override
  List<Object?> get props => [password];
}
