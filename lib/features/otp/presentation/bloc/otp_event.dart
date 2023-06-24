import 'package:built_value/built_value.dart';

part 'otp_event.g.dart';

abstract class OTPEvent {}

abstract class SendCodeEvent extends OTPEvent
    implements Built<SendCodeEvent, SendCodeEventBuilder> {
  SendCodeEvent._();

  String get number;

  factory SendCodeEvent(
      [Function(SendCodeEventBuilder b) updates]) = _$SendCodeEvent;

  factory SendCodeEvent.initial() {
    return SendCodeEvent((b) => b);
  }
}


abstract class ClearMessage extends OTPEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
