library base_response_model;

import 'package:flutter/material.dart';
import 'package:holland_bazar/core/models/product_model.dart';
import 'package:holland_bazar/core/network/models/paginate_response_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../features/cart/data/models/cart_model.dart';
import '../../error/exceptions.dart';
import '../../models/authenticated_user_model.dart';
import '../../models/category_model.dart';

part 'base_response_model.g.dart';

@JsonSerializable()
class BaseResponseModel<T> {
  @JsonKey(name: 'status')
  final String? status;

  @JsonKey(name: 'message')
  final dynamic message;

  @JsonKey(name: 'data', fromJson: _dataFromJson, toJson: _dataToJson)
  final T? data;

  BaseResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) {
    return _$BaseResponseModelFromJson<T>(json);
  }
}

T? _dataFromJson<T>(Object? data) {
  debugPrint('_dataFromJson: T is ${T.toString()}\n');

  /// if the data is null or the data is not important
  if (data == null ||
      T.toString() == 'void' ||
      (data is List<dynamic> && data.isEmpty)) {
    debugPrint('BaseResponseModel: Data is null\n');
    return null;
  }

  /// else if the data not null so it should be a Map
  else if (data is Map<String, dynamic>) {
    /***  AuthenticatedUserModel ***/
    if (T.toString() == AuthenticatedUserModel.className) {
      return AuthenticatedUserModel.fromJson(data) as T;
    }

    /***  ProductModel ***/
    if (T.toString() == ProductModel.className) {
      return ProductModel.fromJson(data) as T;
    }

    /***  CartModel ***/
    if (T.toString() == CartModel.className) {
      return CartModel.fromJson(data) as T;
    }

    /***  CategoryModel ***/
    if (T.toString() == CategoryModel.paginationName) {
      return PaginateResponseModel<CategoryModel>.fromJson(data) as T;
    }

    /***  ProductModel ***/
    if (T.toString() == ProductModel.paginationName) {
      return PaginateResponseModel<ProductModel>.fromJson(data) as T;
    }
  }

  debugPrint('_dataFromJson: parse error (BaseResponseModel)');
  throw ParseException();
}

Map<String, dynamic> _dataToJson<T, S, U>(T input, [S? other1, U? other2]) => {
      'data': input,
    };
