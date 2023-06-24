import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/sign_up_repository.dart';

@lazySingleton
class SignUpUseCase implements UseCase<void, SignUpUseCaseParams> {
  final SignUpRepository _repository;

  SignUpUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(SignUpUseCaseParams params) async =>
      await _repository.signUp(
        number: params.number,
        name: params.name,
        address: params.address,
      );
}

class SignUpUseCaseParams extends Equatable {
  final String number;
  final String name;
  final String address;

  const SignUpUseCaseParams({
    required this.number,
    required this.name,
    required this.address,
  });

  @override
  List<Object?> get props => [number, name, address];
}
