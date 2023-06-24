import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/category.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/entities/product.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';

abstract class HomeRepository extends BaseRepository {
  Future<Either<Failure, PaginateList<Category>>> getCategories({
    required PaginationParams params,
  });

  Future<Either<Failure, PaginateList<Product>>> getFrequentlyOrderedProducts({
    required PaginationParams params,
  });
}
