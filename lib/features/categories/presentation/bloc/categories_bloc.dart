import 'package:bloc/bloc.dart';
import 'package:holland_bazar/features/categories/domain/use_cases/get_popular_products_use_case.dart';
import 'package:holland_bazar/features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import 'categories_event.dart';
import 'categories_state.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final GetCategoriesUseCase _getCategoriesUseCase;
  final GetPopularProductsUseCase _getPopularProductsUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetCategoriesEvent() {
    add(GetCategoriesEvent());
  }

  void addGetPopularProductsEvent() {
    add(GetPopularProductsEvent());
  }

  @factoryMethod
  CategoriesBloc(
    this._getCategoriesUseCase,
    this._getPopularProductsUseCase,
  ) : super(CategoriesState.initial()) {
    on<CategoriesEvent>(
      (event, emit) async {
        /*** ClearMessage ***/
        if (event is ClearMessage) {
          emit(CategoriesState.clearMessage(currentState: state));
        }

        /*** GetCategoriesEvent ***/
        if (event is GetCategoriesEvent) {
          if (!state.categories.isFinished) {
            if (state.categories.currentPage == 1) {
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

        /*** GetPopularProductsEvent ***/
        if (event is GetPopularProductsEvent) {
          if (!state.popularProducts.isFinished) {
            if (state.popularProducts.currentPage == 1) {
              emit(state.rebuild((b) => b..isLoading = true));
            } else {
              emit(state.rebuild(
                      (b) => b..popularProducts.isLoading = true));
            }
            final result = await _getPopularProductsUseCase(
              PaginationParams(
                page: state.popularProducts.currentPage,
              ),
            );
            result.fold(
                  (failure) {
                emit(
                  state.rebuild(
                        (b) => b
                      ..isLoading = false
                      ..popularProducts.isLoading = false
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
                      ..popularProducts.isLoading = false
                      ..popularProducts.items.addAll(products.data)
                      ..popularProducts.isFinished =
                          b.popularProducts.currentPage! >=
                              products.page
                      ..popularProducts.currentPage =
                          b.popularProducts.currentPage! + 1,
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
