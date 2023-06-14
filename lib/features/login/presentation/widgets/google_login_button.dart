import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/buttons/custom_text_button.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "or Login With",
          style: TextStyle(
            fontSize: 14.sp,
            color: Theme.of(context).textTheme.headline2!.color,
          ),
        ),
        SizedBox(height: 16.h),
        CustomTextButton(
          backgroundColor: const Color(0xFFDD4B39),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(IconsAssets.googlePlusLogo),
              SizedBox(width: 22.w),
              Text(
                "Login with Google",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          onPressed: () {
            // TODO: handle google login
          },
        ),
      ],
    );
  }
}
