import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/Inputs/password_text_form_field.dart';
import '../../../../core/widgets/buttons/custom_text_button.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key});

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          PasswordTextFormField(
            hint: "New Password",
            passwordController: _passwordController,
          ),
          SizedBox(height: 28.h),
          PasswordTextFormField(
            hint: "Confirm Password",
            lastField: true,
            passwordController: _confirmPasswordController,
            validator: (confirmPassword) {
              if (confirmPassword == null || confirmPassword.isEmpty) {
                return "Confirm Password is required";
              }
              if (_confirmPasswordController.text != _passwordController.text) {
                return "Confirm Password doesn't match password";
              }
              return null;
            },
          ),
          SizedBox(height: 28.h),
          CustomTextButton(
            title: "Next",
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                // TODO: send request;
              }
            },
          ),
        ],
      ),
    );
  }
}
