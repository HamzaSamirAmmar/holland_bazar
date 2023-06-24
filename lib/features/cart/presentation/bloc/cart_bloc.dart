import 'package:bloc/bloc.dart';
import 'package:holland_bazar/core/usecases/usecase.dart';
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
  final RemoveFromCartUseCase _removeFromCartUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  @factoryMethod
  CartBloc(
    this._getCartUseCase,
    this._addToCartUseCase,
    this._removeFromCartUseCase,
  ) : super(CartState.initial()) {
    on<CartEvent>(
      (event, emit) async {
        /*** ClearMessage ***/
        if (event is ClearMessage) {
          emit(CartState.clearMessage(currentState: state));
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
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _removeFromCartUseCase(
            ParamsRemoveFromCartUseCaseUseCase(
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
                message: "Product removed Successfully",
                currentState: state,
              ),
            ),
          );
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
