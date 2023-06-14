import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpTitle extends StatelessWidget {
  const SignUpTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sign Up",
      style: TextStyle(
        fontSize: 30.sp,
        color: Theme.of(context).textTheme.headline1!.color,
      ),
    );
  }
}
