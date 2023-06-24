import 'package:built_value/built_value.dart';
import 'package:holland_bazar/core/entities/product.dart';

import '../../../../core/bloc/base_state_mixin.dart';
import '../../../../core/entities/category.dart';
import '../../../../core/entities/pagination_state_data.dart';

part 'home_state.g.dart';

abstract class HomeState
    with BaseState
    implements Built<HomeState, HomeStateBuilder> {
  HomeState._();

  PaginationStateData<Category> get categories;

  PaginationStateData<Product> get frequentlyOrderedProducts;

  factory HomeState([Function(HomeStateBuilder b) updates]) = _$HomeState;

  factory HomeState.initial() {
    return HomeState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false
        ..categories.replace(PaginationStateData<Category>.initial())
        ..frequentlyOrderedProducts
            .replace(PaginationStateData<Product>.initial()),
    );
  }

  factory HomeState.failure({
    required String message,
    required HomeState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory HomeState.success({
    required String message,
    required HomeState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory HomeState.clearMessage({
    required HomeState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
