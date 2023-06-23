import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class Product extends Equatable {
  final int id;
  final String title;
  final String description;
  final double price;
  final double rate;
  final String image;

  @JsonKey(name: "is_favorite")
  final bool isFavorite;

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.rate,
    required this.image,
    required this.isFavorite,
  });

  factory Product.productWithToggledFavorite(Product product) => Product(
        id: product.id,
        title: product.title,
        description: product.description,
        price: product.price,
        rate: product.rate,
        image: product.image,
        isFavorite: !product.isFavorite,
      );

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        price,
        rate,
        image,
        isFavorite,
      ];
}
