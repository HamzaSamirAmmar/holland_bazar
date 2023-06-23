import 'package:built_value/built_value.dart';

part 'product_details_event.g.dart';

abstract class ProductDetailsEvent {}

abstract class AddToCartEvent extends ProductDetailsEvent
    implements Built<AddToCartEvent, AddToCartEventBuilder> {
  AddToCartEvent._();

  int get productId;

  int get quantity;

  factory AddToCartEvent([Function(AddToCartEventBuilder b) updates]) =
      _$AddToCartEvent;

  factory AddToCartEvent.initial() {
    return AddToCartEvent((b) => b);
  }
}

abstract class GetProductEvent extends ProductDetailsEvent
    implements Built<GetProductEvent, GetProductEventBuilder> {
  GetProductEvent._();

  int get productId;

  factory GetProductEvent([Function(GetProductEventBuilder b) updates]) =
      _$GetProductEvent;

  factory GetProductEvent.initial() {
    return GetProductEvent((b) => b);
  }
}

abstract class ChangeProductFavoriteStatusEvent extends ProductDetailsEvent
    implements
        Built<ChangeProductFavoriteStatusEvent,
            ChangeProductFavoriteStatusEventBuilder> {
  ChangeProductFavoriteStatusEvent._();

  int get productId;

  bool get isFavorite;

  factory ChangeProductFavoriteStatusEvent(
          [Function(ChangeProductFavoriteStatusEventBuilder b) updates]) =
      _$ChangeProductFavoriteStatusEvent;

  factory ChangeProductFavoriteStatusEvent.initial() {
    return ChangeProductFavoriteStatusEvent((b) => b);
  }
}

abstract class ClearMessage extends ProductDetailsEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class EmitInitial extends ProductDetailsEvent
    implements Built<EmitInitial, EmitInitialBuilder> {
  EmitInitial._();

  factory EmitInitial([Function(EmitInitialBuilder b) updates]) = _$EmitInitial;

  factory EmitInitial.initial() {
    return EmitInitial((b) => b);
  }
}
