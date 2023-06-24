import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../injection.dart';
import '../bloc/onboarding_bloc.dart';
import '../widgets/onboarding_indicator.dart';
import 'onboarding_sub_page_base.dart';
import 'registration_type_page.dart';

class OnboardingPage extends StatefulWidget {
  final int page;

  const OnboardingPage({
    super.key,
    this.page = 0,
  });

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late final PageController _controller;

  late final List<Widget> _subPages;

  final _bloc = sl<OnboardingBloc>();

  @override
  void initState() {
    _controller = PageController(initialPage: widget.page);
    _controller.addListener(
      () {
        if (_controller.page == 3) {
          _bloc.addChangeOnboardingStatusEvent();
        }
      },
    );
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
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ..._subPages,
              const RegistrationTypePage(),
            ],
          ),
        ],
      ),
    );
  }
}
