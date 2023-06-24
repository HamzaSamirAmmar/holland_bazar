import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state_mixin.dart';
import '../../domain/entities/cart.dart';

part 'cart_state.g.dart';

abstract class CartState
    with BaseState
    implements Built<CartState, CartStateBuilder> {
  CartState._();

  Cart? get cart;

  factory CartState([Function(CartStateBuilder b) updates]) = _$CartState;

  factory CartState.initial() {
    return CartState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false,
    );
  }

  factory CartState.failure({
    required String message,
    required CartState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory CartState.success({
    required String message,
    required CartState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory CartState.clearMessage({
    required CartState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
