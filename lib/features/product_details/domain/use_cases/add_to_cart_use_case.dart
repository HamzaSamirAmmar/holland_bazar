import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/product_details_repository.dart';

@lazySingleton
class AddToCartUseCase implements UseCase<void, ParamsAddToCartUseCase> {
  final ProductDetailsRepository _repository;

  AddToCartUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ParamsAddToCartUseCase params) async =>
      await _repository.addToCart(
        productId: params.productId,
        quantity: params.quantity,
      );
}

class ParamsAddToCartUseCase extends Equatable {
  final int productId;
  final int quantity;

  const ParamsAddToCartUseCase({
    required this.quantity,
    required this.productId,
  });

  @override
  List<Object?> get props => [productId, quantity];
}
