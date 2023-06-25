import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state_mixin.dart';
import '../../../../core/entities/pagination_state_data.dart';
import '../../../../core/entities/product.dart';

part 'offer_state.g.dart';

abstract class OfferState
    with BaseState
    implements Built<OfferState, OfferStateBuilder> {
  OfferState._();

  PaginationStateData<Product> get products;

  factory OfferState([Function(OfferStateBuilder b) updates]) = _$OfferState;

  factory OfferState.initial() {
    return OfferState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false
        ..products.replace(PaginationStateData<Product>.initial()),
    );
  }

  factory OfferState.failure({
    required String message,
    required OfferState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory OfferState.success({
    required String message,
    required OfferState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory OfferState.clearMessage({
    required OfferState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
