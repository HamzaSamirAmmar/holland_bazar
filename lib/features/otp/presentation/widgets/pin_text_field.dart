import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/util/constants.dart';

class PinTextField extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController otpController;

  const PinTextField({
    super.key,
    required this.otpController,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Pinput(
        preFilledWidget: SvgPicture.asset(IconsAssets.obscureStar),
        controller: otpController,
        onCompleted: (otp) {
          // TODO: send request
        },
        validator: (otp) {
          if (otp == null || otp.isEmpty) {
            return "OTP is required";
          }
          if (otp.length < 4) {
            return "OTP length must be 4";
          }
          return null;
        },
        keyboardType: TextInputType.number,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        defaultPinTheme: PinTheme(
          textStyle: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
            fontSize: 37.sp,
          ),
          width: 56.w,
          height: 56.w,
          decoration: BoxDecoration(
            color: const Color(0xFFF2F2F2),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
