import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state_mixin.dart';

part 'password_state.g.dart';

abstract class PasswordState
    with BaseState
    implements Built<PasswordState, PasswordStateBuilder> {
  PasswordState._();

  bool get success;

  factory PasswordState([Function(PasswordStateBuilder b) updates]) =
      _$PasswordState;

  factory PasswordState.initial() {
    return PasswordState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false
        ..success = false,
    );
  }

  factory PasswordState.failure({
    required String message,
    required PasswordState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory PasswordState.success({
    required String message,
    required PasswordState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory PasswordState.clearMessage({
    required PasswordState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..error = false
        ..message = '',
    );
  }
}
