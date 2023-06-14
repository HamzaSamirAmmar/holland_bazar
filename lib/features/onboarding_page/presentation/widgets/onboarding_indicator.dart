import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingIndicator extends StatefulWidget {
  final PageController controller;

  const OnboardingIndicator({super.key, required this.controller});

  @override
  State<OnboardingIndicator> createState() => _OnboardingIndicatorState();
}

class _OnboardingIndicatorState extends State<OnboardingIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SmoothPageIndicator(
        controller: widget.controller,
        count: 3,
        effect: WormEffect(
          activeDotColor: Theme.of(context).colorScheme.primary,
          dotColor: const Color(0xFFD6D6D6),
          dotHeight: 8.w,
          dotWidth: 8.w,
        ),
      ),
    );
  }
}
