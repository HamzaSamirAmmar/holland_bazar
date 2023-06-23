import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/login_repository.dart';

@lazySingleton
class LoginUseCase implements UseCase<void, ParamsLoginUseCase> {
  final LoginRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ParamsLoginUseCase params) async =>
      await _repository.login(
        number: params.number,
        password: params.password,
      );
}

class ParamsLoginUseCase extends Equatable {
  final String number;
  final String password;

  const ParamsLoginUseCase({
    required this.number,
    required this.password,
  });

  @override
  List<Object?> get props => [number, password];
}
