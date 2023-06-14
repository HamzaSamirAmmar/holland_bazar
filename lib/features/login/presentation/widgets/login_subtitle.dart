import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginSubtitle extends StatelessWidget {
  const LoginSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Add your details to login",
      style: TextStyle(
        fontSize: 14.sp,
        color: Theme.of(context).textTheme.headline2!.color,
      ),
    );
  }
}
