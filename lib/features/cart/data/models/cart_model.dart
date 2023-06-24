import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/cart.dart';
import 'cart_item_model.dart';

part 'cart_model.g.dart';

@JsonSerializable()
class CartModel extends Cart {
  static const String className = "CartModel";

  final List<CartItemModel> items;

  const CartModel({
    required this.items,
    required super.id,
    required super.totalPrice,
    required super.deliveryPrice,
    required super.discountValue,
    required super.grandTotal,
    required super.addressText,
    required super.addressLatitude,
    required super.addressLongitude,
  }) : super(items: items);

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
