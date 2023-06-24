// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel(
      items: (json['cart_items'] as List<dynamic>)
          .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
      totalPrice: (json['total_price'] as num).toDouble(),
      deliveryPrice: (json['delivery_price'] as num).toDouble(),
      discountValue: (json['discount_value'] as num).toDouble(),
      grandTotal: (json['grand_total'] as num).toDouble(),
      addressText: json['address_text'] as String?,
      addressLatitude: (json['address_latitude'] as num?)?.toDouble(),
      addressLongitude: (json['address_longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'id': instance.id,
      'total_price': instance.totalPrice,
      'delivery_price': instance.deliveryPrice,
      'discount_value': instance.discountValue,
      'grand_total': instance.grandTotal,
      'address_text': instance.addressText,
      'address_latitude': instance.addressLatitude,
      'address_longitude': instance.addressLongitude,
      'cart_items': instance.items,
    };
