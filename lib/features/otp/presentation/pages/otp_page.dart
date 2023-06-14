import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/buttons/custom_text_button.dart';
import '../widgets/code_resend_text.dart';
import '../widgets/otp_subtitle.dart';
import '../widgets/otp_title.dart';
import '../widgets/pin_text_field.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  final _otpController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 34.w,
            ),
            child: Column(
              children: [
                SizedBox(height: 65.h),
                const OTPTitle(),
                SizedBox(height: 10.h),
                const OTPSubtitle(),
                SizedBox(height: 54.h),
                PinTextField(
                  formKey: _formKey,
                  otpController: _otpController,
                ),
                SizedBox(height: 35.h),
                CustomTextButton(
                  title: "Next",
                  onPressed: () {
                    _formKey.currentState?.validate();
                  },
                ),
                SizedBox(height: 32.h),
                const CodeResendText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
