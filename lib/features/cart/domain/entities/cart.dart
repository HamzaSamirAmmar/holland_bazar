import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../data/models/cart_item_model.dart';
import 'cart_item.dart';

class Cart extends Equatable {
  final int id;

  @JsonKey(name: "total_price")
  final double totalPrice;

  @JsonKey(name: "delivery_price")
  final double deliveryPrice;

  @JsonKey(name: "discount_value")
  final double discountValue;

  @JsonKey(name: "grand_total")
  final double grandTotal;

  @JsonKey(name: "address_text")
  final String? addressText;

  @JsonKey(name: "address_latitude")
  final double? addressLatitude;

  @JsonKey(name: "address_longitude")
  final double? addressLongitude;

  @JsonKey(name: "cart_items")
  final List<CartItemModel> items;

  const Cart({
    required this.id,
    required this.items,
    required this.totalPrice,
    required this.deliveryPrice,
    required this.discountValue,
    required this.grandTotal,
    required this.addressText,
    required this.addressLatitude,
    required this.addressLongitude,
  });

  @override
  List<Object?> get props => [
        id,
        totalPrice,
        deliveryPrice,
        discountValue,
        grandTotal,
        addressText,
        addressLongitude,
        addressLatitude,
      ];
}
