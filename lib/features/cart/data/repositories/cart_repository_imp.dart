import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/cart.dart';
import '../../domain/repositories/cart_repository.dart';
import '../data_sources/local/cart_local_data_source.dart';
import '../data_sources/remote/cart_remote_data_source.dart';

@LazySingleton(as: CartRepository)
class CartRepositoryImp extends BaseRepositoryImpl implements CartRepository {
  final CartLocalDataSource _local;
  final CartRemoteDataSource _remote;

  CartRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, void>> addToCart({
    required int id,
    required int quantity,
  }) async =>
      await requestWithToken<void>(
        (token) => _remote.addToCart(
          id: id,
          quantity: quantity,
          token: token,
        ),
      );

  @override
  Future<Either<Failure, Cart?>> getCart() async =>
      await requestWithToken<Cart?>(
        (token) => _remote.getCart(
          token: token,
        ),
      );

  @override
  Future<Either<Failure, void>> removeFromCart({
    required int id,
  }) async =>
      await requestWithToken<void>(
        (token) => _remote.removeFromCart(
          id: id,
          token: token,
        ),
      );
}
