import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state_mixin.dart';
import '../../../../core/entities/category.dart';
import '../../../../core/entities/pagination_state_data.dart';
import '../../../../core/entities/product.dart';

part 'categories_state.g.dart';

abstract class CategoriesState
    with BaseState
    implements Built<CategoriesState, CategoriesStateBuilder> {
  CategoriesState._();

  PaginationStateData<Category> get categories;

  PaginationStateData<Product> get popularProducts;

  factory CategoriesState([Function(CategoriesStateBuilder b) updates]) =
      _$CategoriesState;

  factory CategoriesState.initial() {
    return CategoriesState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false
        ..categories.replace(PaginationStateData<Category>.initial())
        ..popularProducts.replace(PaginationStateData<Product>.initial()),
    );
  }

  factory CategoriesState.failure({
    required String message,
    required CategoriesState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory CategoriesState.success({
    required String message,
    required CategoriesState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory CategoriesState.clearMessage({
    required CategoriesState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
