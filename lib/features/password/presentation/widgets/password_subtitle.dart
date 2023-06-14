import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPSubtitle extends StatelessWidget {
  const OTPSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Please check your mobile number 071*****12 continue to reset your password",
      textAlign: TextAlign.center,
      style: TextStyle(
        height: 1.5,
        fontSize: 14.sp,
        color: Theme.of(context).textTheme.headline2!.color,
      ),
    );
  }
}
