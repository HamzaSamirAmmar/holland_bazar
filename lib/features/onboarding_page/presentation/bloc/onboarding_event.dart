import 'package:built_value/built_value.dart';

part 'onboarding_event.g.dart';

abstract class OnboardingEvent {}

abstract class ClearMessage extends OnboardingEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class ChangeOnboardingStatusEvent extends OnboardingEvent
    implements
        Built<ChangeOnboardingStatusEvent, ChangeOnboardingStatusEventBuilder> {
  ChangeOnboardingStatusEvent._();

  factory ChangeOnboardingStatusEvent(
          [Function(ChangeOnboardingStatusEventBuilder b) updates]) =
      _$ChangeOnboardingStatusEvent;

  factory ChangeOnboardingStatusEvent.initial() {
    return ChangeOnboardingStatusEvent((b) => b);
  }
}
