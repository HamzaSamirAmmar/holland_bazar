import 'package:built_value/built_value.dart';

part 'splash_event.g.dart';

abstract class SplashEvent {}

abstract class CheckTokenEvent extends SplashEvent
    implements Built<CheckTokenEvent, CheckTokenEventBuilder> {
  CheckTokenEvent._();

  factory CheckTokenEvent([Function(CheckTokenEventBuilder b) updates]) =
      _$CheckTokenEvent;

  factory CheckTokenEvent.initial() {
    return CheckTokenEvent((b) => b);
  }
}

abstract class GetShowOnBoardingStatusEvent extends SplashEvent
    implements Built<GetShowOnBoardingStatusEvent, GetShowOnBoardingStatusEventBuilder> {
  GetShowOnBoardingStatusEvent._();

  factory GetShowOnBoardingStatusEvent([Function(GetShowOnBoardingStatusEventBuilder b) updates]) =
  _$GetShowOnBoardingStatusEvent;

  factory GetShowOnBoardingStatusEvent.initial() {
    return GetShowOnBoardingStatusEvent((b) => b);
  }
}

abstract class ClearMessage extends SplashEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
  _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
