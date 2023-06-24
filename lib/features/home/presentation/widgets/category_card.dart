import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/entities/category.dart';
import '../../../../core/widgets/custom_cached_network_image.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final bool localImage;

  const CategoryCard({
    super.key,
    required this.category,
    this.localImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 0.3,
                color: const Color(0xFF707070),
              ),
            ),
            child: category.image.isNotEmpty
                ? Center(
                    child: localImage
                        ? Image.asset(
                            category.image,
                            height: 45.h,
                            width: 46.w,
                          )
                        : CustomCachedNetworkImage(
                            imageUrl: category.image,
                          ),
                  )
                : Center(
                    child: Text(
                      "View all",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          ),
          SizedBox(height: 5.h),
          Text(
            category.name,
            style: TextStyle(
              fontSize: 10.sp,
            ),
          )
        ],
      ),
    );
  }
}
