import 'package:dartz/dartz.dart';
import 'package:holland_bazar/core/entities/product.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/category.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetFrequentlyOrderedProductsUseCase
    implements UseCase<PaginateList<Product>, PaginationParams> {
  final HomeRepository _repository;

  GetFrequentlyOrderedProductsUseCase(this._repository);

  @override
  Future<Either<Failure, PaginateList<Product>>> call(
    PaginationParams params,
  ) async =>
      await _repository.getFrequentlyOrderedProducts(
        params: params,
      );
}
