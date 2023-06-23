import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/product.dart';
import '../../domain/use_cases/add_to_cart_use_case.dart';
import '../../domain/use_cases/change_product_favorite_status_use_case.dart';
import '../../domain/use_cases/get_product_use_case.dart';
import 'product_details_event.dart';
import 'product_details_state.dart';

@lazySingleton
class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final AddToCartUseCase _addToCartUseCase;
  final GetProductUseCase _getProductUseCase;
  final ChangeFavoriteStatusUseCase _changeFavoriteStatusUseCase;

  void addAddToCartEvent({
    required int productId,
    required int quantity,
  }) {
    add(AddToCartEvent(
      (b) => b
        ..productId = productId
        ..quantity = quantity,
    ));
  }

  void addGetProductEvent({
    required int productId,
  }) {
    add(GetProductEvent(
      (b) => b..productId = productId,
    ));
  }

  void addChangeProductFavoriteStatusEvent({
    required int productId,
    required bool isFavorite,
  }) {
    add(ChangeProductFavoriteStatusEvent(
      (b) => b
        ..productId = productId
        ..isFavorite = isFavorite,
    ));
  }

  void clearMessage() {
    add(ClearMessage());
  }

  void emitInitial() {
    add(EmitInitial());
  }

  @factoryMethod
  ProductDetailsBloc(
    this._addToCartUseCase,
    this._changeFavoriteStatusUseCase,
    this._getProductUseCase,
  ) : super(ProductDetailsState.initial()) {
    on<ProductDetailsEvent>(
      (event, emit) async {
        /*** ClearMessage ***/
        if (event is ClearMessage) {
          emit(ProductDetailsState.clearMessage(currentState: state));
        }

        /*** EmitInitial ***/
        if (event is EmitInitial) {
          emit(ProductDetailsState.initial());
        }

        /*** GetProductEvent ***/
        if (event is GetProductEvent) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getProductUseCase(
            ParamsGetProductUseCase(
              productId: event.productId,
            ),
          );

          result.fold(
            (failure) => emit(
              ProductDetailsState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (product) => emit(
              state.rebuild(
                (b) => b
                  ..product = product
                  ..isLoading = false,
              ),
            ),
          );
        }

        /*** AddToCartEvent ***/
        if (event is AddToCartEvent) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _addToCartUseCase(
            ParamsAddToCartUseCase(
              quantity: event.quantity,
              productId: event.productId,
            ),
          );

          result.fold(
            (failure) => emit(
              ProductDetailsState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (success) => emit(
              ProductDetailsState.success(
                message: "Product Added Successfully",
                currentState: state,
              ),
            ),
          );
        }

        /*** ChangeProductFavoriteStatusEvent ***/
        if (event is ChangeProductFavoriteStatusEvent) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _changeFavoriteStatusUseCase(
            ParamsChangeFavoriteStatusUseCase(
              isFavorite: event.isFavorite,
              productId: event.productId,
            ),
          );

          result.fold(
            (failure) => emit(
              ProductDetailsState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (success) => emit(
              state.rebuild(
                (b) => b
                  ..product = Product.productWithToggledFavorite(state.product!)
                  ..message = event.isFavorite
                      ? "Product Removed from Favorite Successfully"
                      : "Product added to Favorite Successfully"
                  ..isLoading = false,
              ),
            ),
          );
        }
      },
    );
  }
}
