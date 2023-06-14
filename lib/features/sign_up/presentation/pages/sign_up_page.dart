import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/features/sign_up/presentation/widgets/login_text.dart';

import '../widgets/sign_up_form.dart';
import '../widgets/sign_up_subtitle.dart';
import '../widgets/sign_up_title.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 34.w,
            ),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                const SignUpTitle(),
                SizedBox(height: 12.h),
                const SignUpSubtitle(),
                SizedBox(height: 112.h),
                const SignUpForm(),
                SizedBox(height: 24.h),
                const LoginText(),
                SizedBox(height: 42.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
