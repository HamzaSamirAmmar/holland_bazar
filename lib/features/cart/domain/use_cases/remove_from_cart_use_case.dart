import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/cart.dart';
import '../repositories/cart_repository.dart';

@lazySingleton
class RemoveFromCartUseCase
    implements UseCase<void, ParamsRemoveFromCartUseCaseUseCase> {
  final CartRepository _repository;

  RemoveFromCartUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(
    ParamsRemoveFromCartUseCaseUseCase params,
  ) async =>
      await _repository.removeFromCart(
        id: params.id,
      );
}

class ParamsRemoveFromCartUseCaseUseCase extends Equatable {
  final int id;

  const ParamsRemoveFromCartUseCaseUseCase({required this.id});

  @override
  List<Object?> get props => [id];
}
