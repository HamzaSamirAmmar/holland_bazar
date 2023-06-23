import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/product.dart';
import '../../../../core/error/failures.dart';

abstract class ProductDetailsRepository extends BaseRepository {
  Future<Either<Failure, Product>> getProduct({
    required int productId,
  });

  Future<Either<Failure, void>> addToCart({
    required int productId,
    required int quantity,
  });

  Future<Either<Failure, void>> changeFavoriteStatus({
    required int productId,
    required bool isFavorite,
  });
}
