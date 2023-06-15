import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:holland_bazar/core/util/constants.dart';
import 'package:holland_bazar/core/util/generate_screen.dart';
import 'package:holland_bazar/core/widgets/buttons/custom_text_button.dart';

class RegistrationTypePage extends StatefulWidget {
  const RegistrationTypePage({super.key});

  @override
  State<RegistrationTypePage> createState() => _RegistrationTypePageState();
}

class _RegistrationTypePageState extends State<RegistrationTypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 257.h,
            left: 0,
            right: 0,
            child: Container(
              width: 245.w,
              height: 245.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 6,
                ),
              ),
              child: Center(
                child: SvgPicture.asset(
                  IconsAssets.logo,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Image.asset(ImagesAssets.registrationTypePageBackground),
              const Spacer(),
              CustomTextButton(
                title: "Login",
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    PageName.loginPage,
                    (route) => false,
                  );
                },
              ),
              SizedBox(height: 20.h),
              CustomTextButton(
                title: "Create an Account",
                filled: false,
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    PageName.signUpPage,
                    (route) => false,
                  );
                },
              ),
              SizedBox(height: 43.h),
            ],
          ),
        ],
      ),
    );
  }
}
