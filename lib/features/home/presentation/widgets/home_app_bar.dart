import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:holland_bazar/core/widgets/search_bar.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 244.h,
      width: 375.w,
      child: Stack(
        children: [
          Image.asset(
            ImagesAssets.homeHeader,
            width: 375.w,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            top: 54.h,
            left: 15.w,
            right: 21.w,
            child: const SearchBar(),
          ),
          Positioned(
            top: 137.h,
            left: 24.w,
            child: Text(
              "Holland Bazar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 165.h,
            left: 24.w,
            child: Text(
              "Powered By TFC",
              style: TextStyle(
                color: Colors.white,
                fontSize: 8.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
