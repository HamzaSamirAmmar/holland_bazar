import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/use_cases/get_categories_use_case.dart';
import '../../domain/use_cases/get_frequently_ordered_products_use_case.dart';
import 'home_event.dart';
import 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCategoriesUseCase _getCategoriesUseCase;
  final GetFrequentlyOrderedProductsUseCase
      _getFrequentlyOrderedProductsUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetCategoriesEvent() {
    add(GetCategoriesEvent());
  }

  void addGetFrequentlyOrderedProductsEvent() {
    add(GetFrequentlyOrderedProductsEvent());
  }

  @factoryMethod
  HomeBloc(
    this._getCategoriesUseCase,
    this._getFrequentlyOrderedProductsUseCase,
  ) : super(HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        /*** ClearMessage ***/
        if (event is ClearMessage) {
          emit(HomeState.clearMessage(currentState: state));
        }

        /*** GetCategoriesEvent ***/
        if (event is GetCategoriesEvent) {
          if (!state.categories.isFinished) {
            if (state.categories.currentPage == 0) {
              emit(state.rebuild((b) => b..isLoading = true));
            } else {
              emit(state.rebuild((b) => b..categories.isLoading = true));
            }
            final result = await _getCategoriesUseCase(
              PaginationParams(
                page: state.categories.currentPage,
              ),
            );
            result.fold(
              (failure) {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isLoading = false
                      ..categories.isLoading = false
                      ..message = failure.error
                      ..error = true,
                  ),
                );
              },
              (categories) => {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isLoading = false
                      ..categories.isLoading = false
                      ..categories.items.addAll(categories.data)
                      ..categories.isFinished =
                          b.categories.currentPage! >= categories.page
                      ..categories.currentPage = b.categories.currentPage! + 1,
                  ),
                ),
              },
            );
          }
        }

        /*** GetFrequentlyOrderedProductsEvent ***/
        if (event is GetFrequentlyOrderedProductsEvent) {
          if (!state.frequentlyOrderedProducts.isFinished) {
            if (state.frequentlyOrderedProducts.currentPage == 0) {
              emit(state.rebuild((b) => b..isLoading = true));
            } else {
              emit(state.rebuild(
                  (b) => b..frequentlyOrderedProducts.isLoading = true));
            }
            final result = await _getFrequentlyOrderedProductsUseCase(
              PaginationParams(
                page: state.frequentlyOrderedProducts.currentPage,
              ),
            );
            result.fold(
              (failure) {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isLoading = false
                      ..frequentlyOrderedProducts.isLoading = false
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
                      ..frequentlyOrderedProducts.isLoading = false
                      ..frequentlyOrderedProducts.items.addAll(products.data)
                      ..frequentlyOrderedProducts.isFinished =
                          b.frequentlyOrderedProducts.currentPage! >=
                              products.page
                      ..frequentlyOrderedProducts.currentPage =
                          b.frequentlyOrderedProducts.currentPage! + 1,
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
