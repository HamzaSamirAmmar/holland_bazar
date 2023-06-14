import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/core/util/constants.dart';
import 'package:holland_bazar/features/onboarding_page/presentation/pages/registration_type_page.dart';
import 'package:holland_bazar/features/onboarding_page/presentation/widgets/onboarding_indicator.dart';
import 'package:holland_bazar/features/onboarding_page/presentation/pages/onboarding_sub_page_base.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = PageController();

  late final List<Widget> _subPages;

  @override
  void initState() {
    _subPages = [
      OnboardingSubPageBase(
        controller: _controller,
        title: "Find Food You Love",
        subtitle:
            "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
        image: ImagesAssets.onboarding1,
      ),
      OnboardingSubPageBase(
        controller: _controller,
        title: "Fast Delivery",
        subtitle: "Fast food delivery to your home, office wherever you are",
        image: ImagesAssets.onboarding2,
      ),
      OnboardingSubPageBase(
        controller: _controller,
        title: "Live Tracking",
        subtitle:
            "Real time tracking of your food on the app once you placed the order",
        image: ImagesAssets.onboarding3,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 445.h,
            left: 0,
            right: 0,
            child: OnboardingIndicator(
              controller: _controller,
            ),
          ),
          PageView(
            controller: _controller,
            children: [
              ..._subPages,
              RegistrationTypePage(),
            ],
          ),
        ],
      ),
    );
  }
}
