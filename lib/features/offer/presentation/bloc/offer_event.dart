import 'package:built_value/built_value.dart';

part 'offer_event.g.dart';

abstract class OfferEvent {}

abstract class ClearMessage extends OfferEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class GetAllProductsEvent extends OfferEvent
    implements Built<GetAllProductsEvent, GetAllProductsEventBuilder> {
  GetAllProductsEvent._();

  factory GetAllProductsEvent(
      [Function(GetAllProductsEventBuilder b) updates]) = _$GetAllProductsEvent;

  factory GetAllProductsEvent.initial() {
    return GetAllProductsEvent((b) => b);
  }
}
