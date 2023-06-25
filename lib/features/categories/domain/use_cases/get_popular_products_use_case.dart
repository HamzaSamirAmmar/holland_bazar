import 'package:dartz/dartz.dart';
import 'package:holland_bazar/core/entities/product.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/categories_repository.dart';

@lazySingleton
class GetPopularProductsUseCase
    implements UseCase<PaginateList<Product>, PaginationParams> {
  final CategoriesRepository _repository;

  GetPopularProductsUseCase(this._repository);

  @override
  Future<Either<Failure, PaginateList<Product>>> call(
    PaginationParams params,
  ) async =>
      await _repository.getPopularProducts(
        params: params,
      );
}
