import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/search_bar.dart';

class CategoriesAppBar extends StatefulWidget {
  const CategoriesAppBar({super.key});

  @override
  State<CategoriesAppBar> createState() => _CategoriesAppBarState();
}

class _CategoriesAppBarState extends State<CategoriesAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                ImagesAssets.categoriesHeader,
                height: 160.h,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 54.h,
                child: const SearchBar(),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        PreferredSize(
          preferredSize: Size(375.w, 30.h),
          child: AppBar(
            primary: false,
            leadingWidth: 70.w,
            elevation: 0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 40.h,
            centerTitle: true,
            title: Text(
              "Categories",
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
