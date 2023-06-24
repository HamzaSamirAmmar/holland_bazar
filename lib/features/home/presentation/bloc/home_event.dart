import 'package:built_value/built_value.dart';

part 'home_event.g.dart';

abstract class HomeEvent {}

abstract class ClearMessage extends HomeEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class GetCategoriesEvent extends HomeEvent
    implements Built<GetCategoriesEvent, GetCategoriesEventBuilder> {
  GetCategoriesEvent._();

  factory GetCategoriesEvent([Function(GetCategoriesEventBuilder b) updates]) =
      _$GetCategoriesEvent;

  factory GetCategoriesEvent.initial() {
    return GetCategoriesEvent((b) => b);
  }
}

abstract class GetFrequentlyOrderedProductsEvent extends HomeEvent
    implements
        Built<GetFrequentlyOrderedProductsEvent,
            GetFrequentlyOrderedProductsEventBuilder> {
  GetFrequentlyOrderedProductsEvent._();

  factory GetFrequentlyOrderedProductsEvent(
          [Function(GetFrequentlyOrderedProductsEventBuilder b) updates]) =
      _$GetFrequentlyOrderedProductsEvent;

  factory GetFrequentlyOrderedProductsEvent.initial() {
    return GetFrequentlyOrderedProductsEvent((b) => b);
  }
}
