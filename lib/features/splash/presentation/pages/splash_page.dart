import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        // TODO: only for testing remove them when implement splash page check token use case and navigator to the proper page
        onDoubleTap: () {
          Navigator.pushReplacementNamed(context, PageName.onboardingPage);
        },
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Image.asset(
                ImagesAssets.splashDots,
              ),
            ),
            Positioned(
              top: 173.h,
              right: 60.w,
              left: 60.w,
              child: Image.asset(
                ImagesAssets.splashTitle,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                ImagesAssets.splashFooter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
