import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/product.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/product_details_repository.dart';
import '../data_sources/local/product_details_local_data_source.dart';
import '../data_sources/remote/product_details_remote_data_source.dart';

@LazySingleton(as: ProductDetailsRepository)
class ProductDetailsRepositoryImp extends BaseRepositoryImpl
    implements ProductDetailsRepository {
  final ProductDetailsLocalDataSource _local;
  final ProductDetailsRemoteDataSource _remote;

  ProductDetailsRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, void>> addToCart({
    required int productId,
    required int quantity,
  }) async =>
      await requestWithToken<void>(
        (token) => _remote.addToCart(
          productId: productId,
          quantity: quantity,
          token: token,
        ),
      );

  @override
  Future<Either<Failure, void>> changeFavoriteStatus({
    required int productId,
    required bool isFavorite,
  }) async =>
      await requestWithToken<void>(
        (token) => _remote.changeProductFavoriteStatus(
          productId: productId,
          isFavorite: isFavorite,
          token: token,
        ),
      );

  @override
  Future<Either<Failure, Product>> getProduct({
    required int productId,
  }) async =>
      await requestWithToken<Product>(
        (token) => _remote.getProduct(
          productId: productId,
          token: token,
        ),
      );
}
