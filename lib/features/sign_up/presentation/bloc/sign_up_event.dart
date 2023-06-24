import 'package:built_value/built_value.dart';

part 'sign_up_event.g.dart';

abstract class SignUpEvent {}

abstract class SendSignUpDataEvent extends SignUpEvent
    implements Built<SendSignUpDataEvent, SendSignUpDataEventBuilder> {
  SendSignUpDataEvent._();

  String get number;

  String get name;

  String get address;

  factory SendSignUpDataEvent(
      [Function(SendSignUpDataEventBuilder b) updates]) = _$SendSignUpDataEvent;

  factory SendSignUpDataEvent.initial() {
    return SendSignUpDataEvent((b) => b);
  }
}

abstract class ResetPushOTPValueEvent extends SignUpEvent
    implements Built<ResetPushOTPValueEvent, ResetPushOTPValueEventBuilder> {
  ResetPushOTPValueEvent._();

  factory ResetPushOTPValueEvent(
          [Function(ResetPushOTPValueEventBuilder b) updates]) =
      _$ResetPushOTPValueEvent;

  factory ResetPushOTPValueEvent.initial() {
    return ResetPushOTPValueEvent((b) => b);
  }
}

abstract class ClearMessage extends SignUpEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
