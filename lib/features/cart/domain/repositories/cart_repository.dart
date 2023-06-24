import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../entities/cart.dart';

abstract class CartRepository extends BaseRepository {
  Future<Either<Failure, Cart?>> getCart();

  Future<Either<Failure, void>> addToCart({
    required int id,
    required int quantity,
  });

  Future<Either<Failure, void>> removeFromCart({
    required int id,
  });
}
