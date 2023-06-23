import 'package:holland_bazar/core/models/product_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/util/constants.dart';
import 'product_details_remote_data_source.dart';

@LazySingleton(as: ProductDetailsRemoteDataSource)
class ProductDetailsRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements ProductDetailsRemoteDataSource {
  ProductDetailsRemoteDataSourceImp({required super.dio});

  @override
  Future<ProductModel> getProduct({
    required int productId,
    required String token,
  }) async =>
      await performGetRequest<ProductModel>(
        token: token,
        endpoint: Endpoints.getProductDetails(productId),
      );

  @override
  Future<void> addToCart({
    required int productId,
    required int quantity,
    required String token,
  }) async =>
      await performPostRequest<void>(
        token: token,
        endpoint: Endpoints.addToCart,
        data: RequestBody.addToCart(productId: productId, quantity: quantity),
      );

  @override
  Future<void> changeProductFavoriteStatus({
    required int productId,
    required bool isFavorite,
    required String token,
  }) async =>
      await performPostRequest<void>(
        token: token,
        endpoint:
            isFavorite ? Endpoints.removeFromFavorite : Endpoints.addToFavorite,
        data: RequestBody.changeFavoriteStatus(productId: productId),
      );
}
