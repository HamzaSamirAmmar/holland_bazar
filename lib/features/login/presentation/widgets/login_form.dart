import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/Inputs/number_text_form_field.dart';
import '../../../../core/widgets/Inputs/password_text_form_field.dart';
import '../../../../core/widgets/buttons/custom_text_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _numberController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          NumberTextFormField(numberController: _numberController),
          SizedBox(height: 28.h),
          PasswordTextFormField(passwordController: _passwordController),
          SizedBox(height: 28.h),
          CustomTextButton(
            title: "Login",
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                // post login process
              }
            },
          ),
        ],
      ),
    );
  }
}
