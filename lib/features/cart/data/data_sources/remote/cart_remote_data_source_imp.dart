import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/util/constants.dart';
import '../../models/cart_model.dart';
import 'cart_remote_data_source.dart';

@LazySingleton(as: CartRemoteDataSource)
class CartRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements CartRemoteDataSource {
  CartRemoteDataSourceImp({required super.dio});

  @override
  Future<void> addToCart({
    required int id,
    required int quantity,
    required String token,
  }) async =>
      await performPostRequest<void>(
        endpoint: Endpoints.addToCart,
        token: token,
        data: RequestBody.addToCart(
          productId: id,
          quantity: quantity,
        ),
      );

  @override
  Future<CartModel?> getCart({
    required String token,
  }) async =>
      await performGetRequest<CartModel>(
        endpoint: Endpoints.getCart,
        token: token,
      );

  @override
  Future<void> removeFromCart({
    required int id,
    required String token,
  }) async =>
      await performPostRequest<void>(
        endpoint: Endpoints.deleteFromCart(id),
        token: token,
      );

  @override
  Future<CartModel> applyPromoCode({
    required String token,
    required int code,
  }) async =>
      await performPostRequest<CartModel>(
        token: token,
        endpoint: Endpoints.applyCode,
        data: RequestBody.applyCode(code: code),
      );
}
