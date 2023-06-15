import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/generate_screen.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PageName.passwordPage);
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
