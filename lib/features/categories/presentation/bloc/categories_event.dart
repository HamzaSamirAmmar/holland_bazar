import 'package:built_value/built_value.dart';

part 'categories_event.g.dart';

abstract class CategoriesEvent {}

abstract class GetCategoriesEvent extends CategoriesEvent
    implements Built<GetCategoriesEvent, GetCategoriesEventBuilder> {
  GetCategoriesEvent._();

  factory GetCategoriesEvent([Function(GetCategoriesEventBuilder b) updates]) =
      _$GetCategoriesEvent;

  factory GetCategoriesEvent.initial() {
    return GetCategoriesEvent((b) => b);
  }
}

abstract class GetPopularProductsEvent extends CategoriesEvent
    implements Built<GetPopularProductsEvent, GetPopularProductsEventBuilder> {
  GetPopularProductsEvent._();

  factory GetPopularProductsEvent(
          [Function(GetPopularProductsEventBuilder b) updates]) =
      _$GetPopularProductsEvent;

  factory GetPopularProductsEvent.initial() {
    return GetPopularProductsEvent((b) => b);
  }
}

abstract class ClearMessage extends CategoriesEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
