import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Login",
      style: TextStyle(
        fontSize: 30.sp,
        color: Theme.of(context).textTheme.headline1!.color,
      ),
    );
  }
}
