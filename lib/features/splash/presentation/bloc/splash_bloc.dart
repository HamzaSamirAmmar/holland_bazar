import 'package:bloc/bloc.dart';
import 'package:holland_bazar/core/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/check_token_use_case.dart';
import '../../domain/use_cases/get_show_on_boarding_status_use_case.dart';
import 'splash_event.dart';
import 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final CheckTokenUseCase _checkTokenUseCase;
  final GetShowOnBoardingStatusUseCase _getShowOnBoardingStatusUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetShowOnBoardingStatusEvent() {
    add(GetShowOnBoardingStatusEvent());
  }

  void addCheckTokenEvent() {
    add(CheckTokenEvent());
  }

  @factoryMethod
  SplashBloc(
    this._checkTokenUseCase,
    this._getShowOnBoardingStatusUseCase,
  ) : super(SplashState.initial()) {
    on<SplashEvent>(
      (event, emit) async {
        /*** ClearMessage ***/
        if (event is ClearMessage) {
          emit(SplashState.clearMessage(currentState: state));
        }

        /*** CheckTokenEvent **/
        if (event is CheckTokenEvent) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _checkTokenUseCase(NoParams());

          result.fold(
            (failure) => emit(
              SplashState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (value) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..isUserAuthenticated = value,
              ),
            ),
          );
        }

        /*** GetShowOnBoardingStatusEvent **/
        if (event is GetShowOnBoardingStatusEvent) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getShowOnBoardingStatusUseCase(NoParams());

          result.fold(
            (failure) => emit(
              SplashState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (value) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..showOnBoardingStatus = value,
              ),
            ),
          );
        }
      },
    );
  }
}
