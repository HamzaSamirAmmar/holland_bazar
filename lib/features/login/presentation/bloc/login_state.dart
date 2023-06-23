import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state_mixin.dart';

part 'login_state.g.dart';

abstract class LoginState
    with BaseState
    implements Built<LoginState, LoginStateBuilder> {
  LoginState._();

  bool get success;

  factory LoginState([Function(LoginStateBuilder b) updates]) = _$LoginState;

  factory LoginState.initial() {
    return LoginState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false
        ..success = false,
    );
  }

  factory LoginState.failure({
    required String message,
    required LoginState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory LoginState.success({
    required String message,
    required LoginState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..success = true
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory LoginState.clearMessage({
    required LoginState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
