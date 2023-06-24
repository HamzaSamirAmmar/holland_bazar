import 'package:holland_bazar/core/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../entities/authenticated_user.dart';

part 'authenticated_user_model.g.dart';

@JsonSerializable()
class AuthenticatedUserModel extends AuthenticatedUser {
  static const String className = "AuthenticatedUserModel";

  final UserModel user;

  const AuthenticatedUserModel({
    required super.token,
    required this.user,
  }) : super(user: user);

  factory AuthenticatedUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticatedUserModelFromJson(json);
}
