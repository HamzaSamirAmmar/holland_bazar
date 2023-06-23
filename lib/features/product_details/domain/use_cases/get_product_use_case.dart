import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:holland_bazar/core/entities/product.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/product_details_repository.dart';

@lazySingleton
class GetProductUseCase implements UseCase<Product, ParamsGetProductUseCase> {
  final ProductDetailsRepository _repository;

  GetProductUseCase(this._repository);

  @override
  Future<Either<Failure, Product>> call(ParamsGetProductUseCase params) async =>
      await _repository.getProduct(
        productId: params.productId,
      );
}

class ParamsGetProductUseCase extends Equatable {
  final int productId;

  const ParamsGetProductUseCase({
    required this.productId,
  });

  @override
  List<Object?> get props => [productId];
}
