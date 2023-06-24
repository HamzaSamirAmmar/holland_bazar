import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/otp_repository.dart';

@lazySingleton
class SendCodeUseCase implements UseCase<void, SendCodeUseCaseParams> {
  final OTPRepository _repository;

  SendCodeUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(SendCodeUseCaseParams params) async =>
      await _repository.sendCode(
        number: params.number,
      );
}

class SendCodeUseCaseParams extends Equatable {
  final String number;

  const SendCodeUseCaseParams({
    required this.number,
  });

  @override
  List<Object?> get props => [number];
}
