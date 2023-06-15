import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/features/login/presentation/widgets/forget_password_text.dart';
import 'package:holland_bazar/features/login/presentation/widgets/google_login_button.dart';

import '../widgets/login_form.dart';
import '../widgets/login_subtitle.dart';
import '../widgets/login_title.dart';
import '../widgets/sign_up_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 35.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60.h),
                const LoginTitle(),
                SizedBox(height: 12.h),
                const LoginSubtitle(),
                SizedBox(height: 36.h),
                const LoginForm(),
                SizedBox(height: 24.h),
                const ForgetPasswordText(),
                SizedBox(height: 143.h),
                const GoogleLoginButton(),
                SizedBox(height: 104.h),
                const SignUpText(),
                SizedBox(height: 42.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
