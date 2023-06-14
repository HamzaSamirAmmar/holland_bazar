// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginate_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginateResponseModel<T> _$PaginateResponseModelFromJson<T extends Equatable>(
        Map<String, dynamic> json) =>
    PaginateResponseModel<T>(
      count: json['TotalCount'] as int,
      status: json['success'] as bool?,
      message: json['message'] as String?,
      numPages: json['TotalPages'] as int,
      data: (json['data'] as List<dynamic>)
          .map(_Converter<T>().fromJson)
          .toList(),
    );

Map<String, dynamic> _$PaginateResponseModelToJson<T extends Equatable>(
        PaginateResponseModel<T> instance) =>
    <String, dynamic>{
      'success': instance.status,
      'message': instance.message,
      'TotalCount': instance.count,
      'TotalPages': instance.numPages,
      'data': instance.data.map(_Converter<T>().toJson).toList(),
    };
