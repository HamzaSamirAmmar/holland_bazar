import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpSubtitle extends StatelessWidget {
  const SignUpSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Add your details to sign up",
      style: TextStyle(
        fontSize: 14.sp,
        color: Theme.of(context).textTheme.headline2!.color,
      ),
    );
  }
}
