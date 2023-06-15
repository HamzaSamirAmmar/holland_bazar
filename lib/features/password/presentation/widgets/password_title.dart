import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTitle extends StatelessWidget {
  const PasswordTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "New Password",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30.sp,
        color: Theme.of(context).textTheme.headline1!.color,
      ),
    );
  }
}
