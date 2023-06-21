import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:holland_bazar/core/util/constants.dart';
import 'package:holland_bazar/core/util/enums.dart';
import 'package:holland_bazar/core/util/generate_screen.dart';
import 'package:holland_bazar/core/widgets/product_card.dart';

import '../../../../core/entities/product.dart';

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
                        Icons
                            .navigate_next_rounded, // TODO: export icon from design as svg (not fully matched!)
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
          SizedBox(
            height: 95.h,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 7.w),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 75.w,
                        height: 75.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 0.3,
                            color: const Color(0xFF707070),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            ImagesAssets.category1,
                            height: 38.h,
                          ),
                        ),
                      ),
                      Text(
                        "Past Order",
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 75.w,
                        height: 75.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 0.3,
                            color: Color(0xFF707070),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            ImagesAssets.category2,
                            height: 38.h,
                          ),
                        ),
                      ),
                      Text(
                        "Free Delivery",
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 75.w,
                        height: 75.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 0.3,
                            color: Color(0xFF707070),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            ImagesAssets.category3,
                          ),
                        ),
                      ),
                      Text(
                        "Beverages",
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 75.w,
                        height: 75.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 0.3,
                            color: Color(0xFF707070),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            ImagesAssets.category4,
                          ),
                        ),
                      ),
                      Text(
                        "Breakfast",
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 75.w,
                        height: 75.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 0.3,
                            color: Color(0xFF707070),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            ImagesAssets.category5,
                          ),
                        ),
                      ),
                      Text(
                        "Cooking",
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(PageName.categoriesPage);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 75.w,
                          height: 75.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              width: 0.3,
                              color: const Color(0xFF707070),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "View All",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 7.w),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(
              left: 27.w,
              right: 29.8.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Frequently Ordered",
                      style: TextStyle(
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(height: 2.7.h),
                    Text(
                      "Suggestions based on your order history",
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: Theme.of(context).textTheme.subtitle1!.color,
                      ),
                    ),
                  ],
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
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(width: 0.w),
                      const Icon(
                        Icons
                            .navigate_next_rounded, // TODO: export icon from design as svg (not fully matched!)
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18.8.h,
          ),
          SizedBox(
            height: 242.h,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 12.w),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: ProductCard(
                    size: ProductCardSize.large,
                    product: Product(
                      id: 0,
                      title: "Tomatoes",
                      description: "400g",
                      price: 2.99,
                      rate: 4.4,
                      image:
                          "https://192.168.1.110:8000/images/products/broccoli.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
