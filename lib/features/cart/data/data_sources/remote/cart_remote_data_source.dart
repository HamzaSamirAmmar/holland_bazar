import '../../../../../core/data/base_remote_data_source.dart';
import '../../models/cart_model.dart';

abstract class CartRemoteDataSource extends BaseRemoteDataSource {
  Future<CartModel?> getCart({
    required String token,
  });

  Future<void> removeFromCart({
    required int id,
    required String token,
  });

  Future<void> addToCart({
    required int id,
    required int quantity,
    required String token,
  });
}
