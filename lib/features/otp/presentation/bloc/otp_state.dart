import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state_mixin.dart';

part 'otp_state.g.dart';

abstract class OTPState
    with BaseState
    implements Built<OTPState, OTPStateBuilder> {

  bool get isCodeVerified;

  OTPState._();

  factory OTPState([Function(OTPStateBuilder b) updates]) = _$OTPState;

  factory OTPState.initial() {
    return OTPState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false
        ..isCodeVerified = false,
    );
  }

  factory OTPState.failure({
    required String message,
    required OTPState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory OTPState.success({
    required String message,
    required OTPState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory OTPState.clearMessage({
    required OTPState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..error = false
        ..message = '',
    );
  }
}
