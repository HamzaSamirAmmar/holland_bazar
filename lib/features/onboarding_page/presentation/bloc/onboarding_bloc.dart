import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/use_cases/change_onboarding_status_use_case.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final ChangeOnboardingStatusUseCase _changeOnboardingStatusUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addChangeOnboardingStatusEvent() {
    add(ChangeOnboardingStatusEvent());
  }

  @factoryMethod
  OnboardingBloc(this._changeOnboardingStatusUseCase)
      : super(OnboardingState.initial()) {
    on<OnboardingEvent>(
      (event, emit) async {
        /*** ClearMessage ***/
        if (event is ClearMessage) {
          emit(OnboardingState.clearMessage(currentState: state));
        }

        /*** CheckTokenEvent **/
        if (event is ChangeOnboardingStatusEvent) {
          final result = await _changeOnboardingStatusUseCase(NoParams());

          result.fold(
            (failure) => emit(
              OnboardingState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (value) => emit(
              state.rebuild((b) => b),
            ),
          );
        }
      },
    );
  }
}
