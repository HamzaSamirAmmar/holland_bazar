// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int,
      addressLatitude: (json['address_latitude'] as num?)?.toDouble(),
      addressLongitude: (json['address_longitude'] as num?)?.toDouble(),
      addressText: json['address_text'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'address_text': instance.addressText,
      'address_latitude': instance.addressLatitude,
      'address_longitude': instance.addressLongitude,
    };
