import 'package:built_value/built_value.dart';

part 'splash_event.g.dart';

abstract class SplashEvent {}

abstract class ClearMessage extends SplashEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
