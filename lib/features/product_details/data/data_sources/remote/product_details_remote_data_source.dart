import 'package:holland_bazar/core/models/product_model.dart';

import '../../../../../core/data/base_remote_data_source.dart';

abstract class ProductDetailsRemoteDataSource extends BaseRemoteDataSource {
  Future<ProductModel> getProduct({
    required int productId,
    required String token,
  });

  Future<void> addToCart({
    required int productId,
    required int quantity,
    required String token,
  });

  Future<void> changeProductFavoriteStatus({
    required int productId,
    required bool isFavorite,
    required String token,
  });
}
