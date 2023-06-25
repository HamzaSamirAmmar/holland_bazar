import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/util/constants.dart';
import 'offer_card.dart';

class OfferCategories extends StatelessWidget {
  const OfferCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 10.w),
          OfferCard(
            child: Text(
              "Bundles",
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          OfferCard(
            selected: true,
            child: Row(
              children: [
                SvgPicture.asset(
                  IconsAssets.offers,
                  width: 10.w,
                  height: 10.w,
                  color: Colors.white,
                ),
                SizedBox(width: 5.w),
                Text(
                  "10-20%",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          OfferCard(
            child: Row(
              children: [
                SvgPicture.asset(
                  IconsAssets.offers,
                  width: 10.w,
                  height: 10.w,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                SizedBox(width: 5.w),
                Text(
                  "30-40%",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          OfferCard(
            child: Row(
              children: [
                SvgPicture.asset(
                  IconsAssets.offers,
                  width: 10.w,
                  height: 10.w,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                SizedBox(width: 5.w),
                Text(
                  "50-60%",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          OfferCard(
            child: Row(
              children: [
                SvgPicture.asset(
                  IconsAssets.offers,
                  width: 10.w,
                  height: 10.w,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                SizedBox(width: 5.w),
                Text(
                  "70-80%",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
