import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:holland_bazar/features/home/presentation/widgets/frequently_ordered_products.dart';

import '../../../../core/entities/product.dart';
import '../../../../core/util/constants.dart';
import '../../../../core/util/enums.dart';
import '../../../../core/widgets/product_card.dart';
import '../widgets/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
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
                  child: Row(
                    children: [
                      SizedBox(
                        width: 280.w,
                        child: TextFormField(
                          cursorColor: Theme.of(context).colorScheme.tertiary,
                          decoration: InputDecoration(
                            // constraints: BoxConstraints(),
                            contentPadding: EdgeInsets.only(
                              top: 18.2.h,
                              bottom: 10.8.h,
                            ),
                            isCollapsed: true,
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(
                                top: 18.h,
                                right: 16.5.w,
                                bottom: 11.8.h,
                              ),
                              child: SvgPicture.asset(
                                IconsAssets.filter,
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF959FA8),
                            ),

                            prefixIcon: Padding(
                              padding: EdgeInsets.only(
                                top: 16.1.h,
                                bottom: 11.2.h,
                                left: 24.w,
                                right: 4.3.w,
                              ),
                              child: SvgPicture.asset(
                                IconsAssets.search,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7.w),
                      Container(
                        height: 46.h,
                        width: 51.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              IconsAssets.cart,
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                            Positioned(
                              top: 5.h,
                              right: 7.w,
                              child: CircleAvatar(
                                backgroundColor:
                                    Theme.of(context).colorScheme.primary,
                                radius: 8.w,
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
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
          ),
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
                  child: Image.asset(
                    ImagesAssets.offer1,
                    width: 195.w,
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
          SizedBox(height: 38.3.h),
          const Categories(),
          SizedBox(height: 10.h),
          const FrequentlyOrderedProducts(),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
