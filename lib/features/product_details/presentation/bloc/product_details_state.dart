import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state_mixin.dart';
import '../../../../core/entities/product.dart';

part 'product_details_state.g.dart';

abstract class ProductDetailsState
    with BaseState
    implements Built<ProductDetailsState, ProductDetailsStateBuilder> {
  ProductDetailsState._();

  Product? get product;

  factory ProductDetailsState(
      [Function(ProductDetailsStateBuilder b) updates]) = _$ProductDetailsState;

  factory ProductDetailsState.initial() {
    return ProductDetailsState(
      (b) => b
        ..product = null
        ..isLoading = false
        ..message = ''
        ..error = false,
    );
  }

  factory ProductDetailsState.failure({
    required String message,
    required ProductDetailsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory ProductDetailsState.success({
    required String message,
    required ProductDetailsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory ProductDetailsState.clearMessage({
    required ProductDetailsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
