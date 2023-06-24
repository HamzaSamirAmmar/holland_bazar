import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state_mixin.dart';

part 'onboarding_state.g.dart';

abstract class OnboardingState
    with BaseState
    implements Built<OnboardingState, OnboardingStateBuilder> {
  OnboardingState._();

  factory OnboardingState([Function(OnboardingStateBuilder b) updates]) =
      _$OnboardingState;

  factory OnboardingState.initial() {
    return OnboardingState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false,
    );
  }

  factory OnboardingState.failure({
    required String message,
    required OnboardingState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory OnboardingState.success({
    required String message,
    required OnboardingState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory OnboardingState.clearMessage({
    required OnboardingState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
