import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../util/constants.dart';
import '../util/generate_screen.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(PageName.cartPage);
          },
          child: Container(
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
                    backgroundColor: Theme.of(context).colorScheme.primary,
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
          ),
        )
      ],
    );
  }
}
