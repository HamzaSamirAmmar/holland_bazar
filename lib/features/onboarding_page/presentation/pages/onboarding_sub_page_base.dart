import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingSubPageBase extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final PageController controller;

  const OnboardingSubPageBase({
    super.key,
    required this.controller,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: 225.w,
          height: 295.h,
        ),
        // OnboardingIndicator(
        //   controller: controller,
        // ),
        Padding(
          padding: EdgeInsets.only(
            top: 70.h,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 28.sp,
              color: Theme.of(context).textTheme.headline1!.color,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 33.h,
            left: 52.w,
            right: 52.w,
          ),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.sp,
              color: Theme.of(context).textTheme.headline2!.color,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 62.h,
          ),
          child: SizedBox(
            width: 307.w,
            height: 56.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              },
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
