import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:holland_bazar/core/util/constants.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 84.h,
      title: Text(
        "Orders Cart",
        style: TextStyle(
          color: const Color(0xFF222226),
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Theme.of(context).colorScheme.background,
      leadingWidth: 40.w,
      leading: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Padding(
          padding: EdgeInsets.only(
            left: 29.w,
          ),
          child: SvgPicture.asset(
            IconsAssets.arrowBack,
          ),
        ),
      ),
    );
  }
}
