import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/cart_repository.dart';

@lazySingleton
class AddToCartUseCase implements UseCase<void, ParamsAddToCartUseCaseUseCase> {
  final CartRepository _repository;

  AddToCartUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(
    ParamsAddToCartUseCaseUseCase params,
  ) async =>
      await _repository.addToCart(
        id: params.id,
        quantity: params.quantity,
      );
}

class ParamsAddToCartUseCaseUseCase extends Equatable {
  final int id;
  final int quantity;

  const ParamsAddToCartUseCaseUseCase({
    required this.id,
    required this.quantity,
  });

  @override
  List<Object?> get props => [id, quantity];
}
