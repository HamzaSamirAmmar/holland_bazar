import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/entities/product.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';

abstract class OfferRepository extends BaseRepository {
  Future<Either<Failure, PaginateList<Product>>> getAllProducts({
    required PaginationParams params,
  });
}
