import 'package:built_value/built_value.dart';

part 'password_event.g.dart';

abstract class PasswordEvent {}

abstract class ResetPasswordEvent extends PasswordEvent
    implements Built<ResetPasswordEvent, ResetPasswordEventBuilder> {
  ResetPasswordEvent._();

  String get password;

  factory ResetPasswordEvent([Function(ResetPasswordEventBuilder b) updates]) =
  _$ResetPasswordEvent;

  factory ResetPasswordEvent.initial() {
    return ResetPasswordEvent((b) => b);
  }
}

abstract class ClearMessage extends PasswordEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
  _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}