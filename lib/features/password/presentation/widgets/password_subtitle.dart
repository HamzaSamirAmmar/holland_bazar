import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordSubtitle extends StatelessWidget {
  const PasswordSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Please enter your email to receive a link to create a new password via email",
      textAlign: TextAlign.center,
      style: TextStyle(
        height: 1.5,
        fontSize: 14.sp,
        color: Theme.of(context).textTheme.headline2!.color,
      ),
    );
  }
}
