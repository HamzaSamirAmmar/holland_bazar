import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';
import '../../../../injection.dart';
import '../bloc/splash_bloc.dart';
import '../bloc/splash_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _bloc = sl<SplashBloc>();

  @override
  void initState() {
    _bloc.addCheckTokenEvent();
    _bloc.addGetShowOnBoardingStatusEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state.isUserAuthenticated != null) {
          if (state.isUserAuthenticated!) {
            Future.delayed(const Duration(seconds: 1)).whenComplete(
              () => Navigator.of(context)
                  .pushNamedAndRemoveUntil(PageName.signUpPage, (route) => false),
            );
          } else if (state.showOnBoardingStatus != null) {
            Future.delayed(const Duration(seconds: 1)).whenComplete(
              () => Navigator.of(context).pushNamedAndRemoveUntil(
                PageName.onboardingPage,
                (route) => false,
                arguments: state.showOnBoardingStatus! ? 3 : 0,
              ),
            );
          }
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
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
