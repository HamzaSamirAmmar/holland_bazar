import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: navigate to forget password page
      },
      child: Text(
        "Forget your password?",
        style: TextStyle(
          fontSize: 14.sp,
          color: Theme.of(context).textTheme.headline2!.color,
        ),
      ),
    );
  }
}
