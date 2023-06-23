import 'package:built_value/built_value.dart';

part 'login_event.g.dart';

abstract class LoginEvent {}

abstract class PostLoginEvent extends LoginEvent
    implements Built<PostLoginEvent, PostLoginEventBuilder> {
  PostLoginEvent._();

  String get number;

  String get password;

  factory PostLoginEvent([Function(PostLoginEventBuilder b) updates]) =
      _$PostLoginEvent;

  factory PostLoginEvent.initial() {
    return PostLoginEvent((b) => b);
  }
}

abstract class ClearMessage extends LoginEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
