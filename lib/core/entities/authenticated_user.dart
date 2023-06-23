import 'package:equatable/equatable.dart';
import 'package:holland_bazar/core/models/user_model.dart';

class AuthenticatedUser extends Equatable {
  final String token;

  final UserModel user;

  const AuthenticatedUser({
    required this.token,
    required this.user,
  });

  @override
  List<Object?> get props => [token, user];
}
