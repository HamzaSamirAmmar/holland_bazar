import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state_mixin.dart';

part 'splash_state.g.dart';

abstract class SplashState
    with BaseState
    implements Built<SplashState, SplashStateBuilder> {
  SplashState._();

  bool? get showOnBoardingStatus;

  bool? get isUserAuthenticated;

  factory SplashState([Function(SplashStateBuilder b) updates]) = _$SplashState;

  factory SplashState.initial() {
    return SplashState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false
        ..showOnBoardingStatus = null
        ..isUserAuthenticated = null,
    );
  }

  factory SplashState.failure({
    required String message,
    required SplashState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory SplashState.success({
    required String message,
    required SplashState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory SplashState.clearMessage({
    required SplashState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
