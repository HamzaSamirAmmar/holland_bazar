// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseListResponseModel<T> _$BaseListResponseModelFromJson<T>(
        Map<String, dynamic> json) =>
    BaseListResponseModel<T>(
      status: json['Succeeded'] as bool?,
      message: json['Messages'] as List<dynamic>?,
      data: (json['Data'] as List<dynamic>?)
          ?.map((e) => _Converter<T>().fromJson(e as Object))
          .toList(),
    );

Map<String, dynamic> _$BaseListResponseModelToJson<T>(
        BaseListResponseModel<T> instance) =>
    <String, dynamic>{
      'Succeeded': instance.status,
      'Messages': instance.message,
      'Data': instance.data?.map(_Converter<T>().toJson).toList(),
    };
