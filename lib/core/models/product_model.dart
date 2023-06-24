import 'package:json_annotation/json_annotation.dart';

import '../entities/product.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends Product {
  static const String className = "ProductModel";
  static const String paginationName = "PaginateResponseModel<ProductModel>";


  const ProductModel({
    required super.id,
    required super.title,
    required super.description,
    required super.price,
    required super.rate,
    required super.image,
    required super.isFavorite,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
