import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/product_model.dart';
import '../../domain/entities/cart_item.dart';

part 'cart_item_model.g.dart';

@JsonSerializable()
class CartItemModel extends CartItem {
  static const String className = "CartItemModel";

  final ProductModel product;

  const CartItemModel({
    required super.id,
    required super.quantity,
    required super.pricePerItem,
    required this.product,
  }) : super(
          product: product,
        );

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}
