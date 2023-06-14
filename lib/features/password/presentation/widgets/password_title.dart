import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPTitle extends StatelessWidget {
  const OTPTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "We have sent an OTP to your Mobile",
      textAlign: TextAlign.center,
      style: TextStyle(
        height: 1.5,
        fontSize: 25.sp,
        color: Theme.of(context).textTheme.headline1!.color,
      ),
    );
  }
}
