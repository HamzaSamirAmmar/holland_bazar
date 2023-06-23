import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/Inputs/number_text_form_field.dart';
import '../../../../core/widgets/Inputs/password_text_form_field.dart';
import '../../../../core/widgets/buttons/custom_text_button.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_state.dart';

class LoginForm extends StatefulWidget {
  final LoginBloc bloc;

  const LoginForm({super.key, required this.bloc});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _numberController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      bloc: widget.bloc,
      listener: (context, state) {
        if (state.success) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              PageName.mainPage,
              (route) => false,
            );
          });
        }
      },
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            NumberTextFormField(numberController: _numberController),
            SizedBox(height: 28.h),
            PasswordTextFormField(
              passwordController: _passwordController,
              lastField: true,
            ),
            SizedBox(height: 28.h),
            CustomTextButton(
              title: "Login",
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  widget.bloc.addPostLoginEvent(
                    number: _numberController.text,
                    password: _passwordController.text,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
