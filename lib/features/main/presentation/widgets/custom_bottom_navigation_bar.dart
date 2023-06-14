import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_bottom_navigation_bar_item_icon.dart';
import 'statics/bottom_navigation_bar_items.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h,
      child: BottomNavigationBar(
        onTap: onTap,
        enableFeedback: false,
        selectedFontSize: 9.sp,
        unselectedFontSize: 9.sp,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        selectedLabelStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: TextStyle(
          color: Theme.of(context).textTheme.subtitle1!.color,
          fontWeight: FontWeight.w400,
        ),
        items: <BottomNavigationBarItem>[
          ...items.map(
            (item) => BottomNavigationBarItem(
              label: item['label'],
              icon: CustomBottomNavigationBarItemIcon(
                icon: item['icon'],
                index: item['index'],
                currentIndex: currentIndex,
              ),
            ),
          )
        ],
      ),
    );
  }
}
