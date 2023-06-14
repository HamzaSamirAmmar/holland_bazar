import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class PasswordTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController passwordController;
  final String? Function(String?)? validator;

  const PasswordTextFormField({
    super.key,
    this.hint = 'Password',
    required this.passwordController,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hint: hint,
      controller: passwordController,
      obscure: true,
      validator: validator ??
          (password) {
            if (password == null || password.isEmpty) {
              return "Password is required";
            }
            return null;
          },
    );
  }
}
