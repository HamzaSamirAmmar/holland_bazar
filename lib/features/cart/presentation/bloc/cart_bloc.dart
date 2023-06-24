import 'package:bloc/bloc.dart';
import 'package:holland_bazar/core/usecases/usecase.dart';
import 'package:holland_bazar/features/cart/domain/use_cases/apply_promo_code_use_case.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/add_to_cart_use_case.dart';
import '../../domain/use_cases/get_cart_use_case.dart';
import '../../domain/use_cases/remove_from_cart_use_case.dart';
import 'cart_event.dart';
import 'cart_state.dart';

@lazySingleton
class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartUseCase _getCartUseCase;
  final AddToCartUseCase _addToCartUseCase;
  final ApplyPromoCodeUseCase _applyPromoCodeUseCase;
  final RemoveFromCartUseCase _removeFromCartUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetCartEvent() {
    add(GetCartEvent());
  }

  void addAddToCartEvent({
    required int id,
    required int quantity,
  }) {
    add(AddToCartEvent(
      (b) => b
        ..id = id
        ..quantity = quantity,
    ));
  }

  void addRemoveFromCartEvent({
    required int id,
  }) {
    add(RemoveFromCartEvent(
      (b) => b..id = id,
    ));
  }

  void addApplyPromoCodeEvent({
    required int code,
  }) {
    add(ApplyPromoCodeEvent(
      (b) => b..code = code,
    ));
  }

  @factoryMethod
  CartBloc(
    this._getCartUseCase,
    this._addToCartUseCase,
    this._removeFromCartUseCase,
    this._applyPromoCodeUseCase,
  ) : super(CartState.initial()) {
    on<CartEvent>(
      (event, emit) async {
        /*** ClearMessage ***/
        if (event is ClearMessage) {
          emit(CartState.clearMessage(currentState: state));
        }

        /*** ApplyPromoCodeEvent ***/
        if (event is ApplyPromoCodeEvent) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _applyPromoCodeUseCase(
            ParamsApplyPromoCodeUseCase(
              code: event.code,
            ),
          );

          result.fold(
            (failure) => emit(
              CartState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (cart) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..cart = cart,
              ),
            ),
          );
        }

        /*** GetCartEvent ***/
        if (event is GetCartEvent) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getCartUseCase(NoParams());

          result.fold(
            (failure) => emit(
              CartState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (cart) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..cart = cart,
              ),
            ),
          );
        }

        /*** RemoveFromCartEvent ***/
        if (event is RemoveFromCartEvent) {
          final item = state.cart!.items.firstWhere(
            (element) => element.id == event.id,
          );

          emit(
            state.rebuild(
              (b) => b
                ..isLoading = true
                ..cart!.items.removeWhere((element) => element.id == event.id),
            ),
          );

          final result = await _removeFromCartUseCase(
            ParamsRemoveFromCartUseCaseUseCase(
              id: event.id,
            ),
          );

          result.fold(
              (failure) => emit(
                    state.rebuild(
                      (b) => b
                        ..cart!.items.add(item)
                        ..message = failure.error
                        ..isLoading = false
                        ..error = true,
                    ),
                  ), (success) {
            addGetCartEvent();
            emit(
              CartState.success(
                message: "Product removed Successfully",
                currentState: state,
              ),
            );
          });
        }

        /*** AddToCartEvent ***/
        if (event is AddToCartEvent) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _addToCartUseCase(
            ParamsAddToCartUseCaseUseCase(
              quantity: event.quantity,
              id: event.id,
            ),
          );

          result.fold(
            (failure) => emit(
              CartState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (success) => emit(
              CartState.success(
                message: "Product Added Successfully",
                currentState: state,
              ),
            ),
          );
        }
      },
    );
  }
}
