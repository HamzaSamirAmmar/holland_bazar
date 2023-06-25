import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/core/util/generate_screen.dart';

import '../../../../core/util/constants.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 29.8.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Offers",
                style: TextStyle(
                  fontSize: 13.sp,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    const Icon(
                      Icons.navigate_next_rounded,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 195.h,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.w,
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed(PageName.offerPage);
                  },
                  child: Image.asset(
                    ImagesAssets.offer1,
                    width: 195.w,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.w,
                ),
                child: Image.asset(
                  ImagesAssets.offer2,
                  width: 195.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.w,
                ),
                child: Image.asset(
                  ImagesAssets.offer3,
                  width: 195.w,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
