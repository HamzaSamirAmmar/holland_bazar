import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';

class OfferAppBar extends StatelessWidget {
  const OfferAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          ImagesAssets.offer1,
          height: 375.h,
          fit: BoxFit.fitHeight,
        ),
        PreferredSize(
          preferredSize: Size(375.w, 52.h),
          child: AppBar(
            primary: false,
            leadingWidth: 70.w,
            elevation: 0,
            backgroundColor: const Color(0xFFE1E1E1),
            toolbarHeight: 52.h,
            centerTitle: true,
            title: Text(
              "Offers",
              style: TextStyle(
                fontSize: 18.sp,
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Row(
                children: [
                  SizedBox(width: 21.w),
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Theme.of(context).colorScheme.primary,
                    size: 10.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
