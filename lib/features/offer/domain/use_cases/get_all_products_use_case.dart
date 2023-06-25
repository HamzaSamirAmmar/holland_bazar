import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/paginate_list.dart';
import '../../../../core/entities/product.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/offer_repository.dart';

@lazySingleton
class GetAllProductsUseCase
    implements UseCase<PaginateList<Product>, PaginationParams> {
  final OfferRepository _repository;

  GetAllProductsUseCase(this._repository);

  @override
  Future<Either<Failure, PaginateList<Product>>> call(
    PaginationParams params,
  ) async =>
      await _repository.getAllProducts(
        params: params,
      );
}
