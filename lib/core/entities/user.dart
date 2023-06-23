import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String phone;
  final double email;

  @JsonKey(name: "address_text")
  final double addressText;

  @JsonKey(name: "address_latitude")
  final String addressLatitude;

  @JsonKey(name: "address_longitude")
  final String addressLongitude;

  const User({
    required this.id,
    required this.addressLatitude,
    required this.addressLongitude,
    required this.addressText,
    required this.email,
    required this.name,
    required this.phone,
  });

  @override
  List<Object?> get props => [
        id,
        addressLatitude,
        addressLongitude,
        addressText,
        email,
        name,
        phone,
      ];
}
