import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBarItemIcon extends StatelessWidget {
  final int index;
  final String icon;
  final int currentIndex;

  const CustomBottomNavigationBarItemIcon({
    super.key,
    required this.index,
    required this.icon,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 2.h,
      ),
      child: SizedBox(
        height: 20.h,
        child: SvgPicture.asset(
          icon,
          color: currentIndex == index
              ? Theme.of(context).colorScheme.primary
              : null,
        ),
      ),
    );
  }
}
