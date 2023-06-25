import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/use_cases/get_all_products_use_case.dart';
import 'offer_event.dart';
import 'offer_state.dart';

@injectable
class OfferBloc extends Bloc<OfferEvent, OfferState> {
  final GetAllProductsUseCase _getAllProductsUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetAllProductsEvent() {
    add(GetAllProductsEvent());
  }

  @factoryMethod
  OfferBloc(this._getAllProductsUseCase) : super(OfferState.initial()) {
    on<OfferEvent>(
      (event, emit) async {
        /*** ClearMessage ***/
        if (event is ClearMessage) {
          emit(OfferState.clearMessage(currentState: state));
        }

        /*** GetAllProductsEvent ***/
        if (event is GetAllProductsEvent) {
          if (!state.products.isFinished) {
            if (state.products.currentPage == 1) {
              emit(state.rebuild((b) => b..isLoading = true));
            } else {
              emit(state.rebuild((b) => b..products.isLoading = true));
            }
            final result = await _getAllProductsUseCase(
              PaginationParams(
                page: state.products.currentPage,
              ),
            );
            result.fold(
              (failure) {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isLoading = false
                      ..products.isLoading = false
                      ..message = failure.error
                      ..error = true,
                  ),
                );
              },
              (products) => {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isLoading = false
                      ..products.isLoading = false
                      ..products.items.addAll(products.data)
                      ..products.isFinished =
                          b.products.currentPage! >= products.page
                      ..products.currentPage = b.products.currentPage! + 1,
                  ),
                ),
              },
            );
          }
        }
      },
    );
  }
}
