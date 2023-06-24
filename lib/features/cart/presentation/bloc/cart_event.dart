import 'package:built_value/built_value.dart';

part 'cart_event.g.dart';

abstract class CartEvent {}

abstract class ClearMessage extends CartEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class GetCartEvent extends CartEvent
    implements Built<GetCartEvent, GetCartEventBuilder> {
  GetCartEvent._();

  factory GetCartEvent([Function(GetCartEventBuilder b) updates]) =
      _$GetCartEvent;

  factory GetCartEvent.initial() {
    return GetCartEvent((b) => b);
  }
}

abstract class RemoveFromCartEvent extends CartEvent
    implements Built<RemoveFromCartEvent, RemoveFromCartEventBuilder> {
  RemoveFromCartEvent._();

  int get id;

  factory RemoveFromCartEvent(
      [Function(RemoveFromCartEventBuilder b) updates]) = _$RemoveFromCartEvent;

  factory RemoveFromCartEvent.initial() {
    return RemoveFromCartEvent((b) => b);
  }
}

abstract class AddToCartEvent extends CartEvent
    implements Built<AddToCartEvent, AddToCartEventBuilder> {
  AddToCartEvent._();

  int get id;

  int get quantity;

  factory AddToCartEvent([Function(AddToCartEventBuilder b) updates]) =
      _$AddToCartEvent;

  factory AddToCartEvent.initial() {
    return AddToCartEvent((b) => b);
  }
}
