import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state_mixin.dart';

part 'sign_up_state.g.dart';

abstract class SignUpState
    with BaseState
    implements Built<SignUpState, SignUpStateBuilder> {

  bool get pushOTPPage;

  SignUpState._();

  factory SignUpState([Function(SignUpStateBuilder b) updates]) = _$SignUpState;

  factory SignUpState.initial() {
    return SignUpState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false
        ..pushOTPPage = false,
    );
  }

  factory SignUpState.failure({
    required String message,
    required SignUpState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory SignUpState.success({
    required String message,
    required SignUpState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory SignUpState.clearMessage({
    required SignUpState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..error = false
        ..message = '',
    );
  }
}
