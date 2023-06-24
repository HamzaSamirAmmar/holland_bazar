import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/entities/product.dart';

class CartItem extends Equatable {
  final int id;
  final int quantity;
  final Product product;

  @JsonKey(name: "price_per_item")
  final double pricePerItem;

  const CartItem({
    required this.id,
    required this.quantity,
    required this.pricePerItem,
    required this.product,
  });

  @override
  List<Object?> get props => [id, quantity, pricePerItem, product];
}
