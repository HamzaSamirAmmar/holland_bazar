import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:holland_bazar/core/util/constants.dart';

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
          Column(
            children: [
              Image.asset(ImagesAssets.registrationTypePageBackground),
              Spacer(),
              SizedBox(
                width: 307.w,
                height: 56.h,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.h,
                ),
                child: SizedBox(
                  width: 307.w,
                  height: 56.h,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Create an Account",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline1!.color,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 43.h),
            ],
          ),
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
        ],
      ),
    );
  }
}
