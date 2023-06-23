import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/entities/product.dart';
import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_cached_network_image.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback onFavoritePressed;

  const ProductTile({
    super.key,
    required this.product,
    required this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 138.w,
              height: 138.w,
              decoration: BoxDecoration(
                color: const Color(0xFFF8EBE8),
                borderRadius: BorderRadius.circular(14),
              ),
              child: CustomCachedNetworkImage(
                imageUrl: product.image,
                width: 133.w,
                height: 127.w,
              ),
            ),
            const SizedBox(width: 13.7),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h),
                SizedBox(
                  width: 150.w,
                  child: Text(
                    product.title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                RatingBarIndicator(
                  itemCount: 5,
                  rating: product.rate,
                  itemBuilder: (_, index) {
                    double rating = index + 0.5;
                    if (product.rate > rating) {
                      return SvgPicture.asset(
                        IconsAssets.starFill,
                      );
                    } else if (product.rate > rating - 0.5) {
                      return SvgPicture.asset(
                        IconsAssets.starHalf,
                      );
                    } else {
                      return SvgPicture.asset(
                        IconsAssets.star,
                      );
                    }
                  },
                  itemSize: 15.sp,
                  unratedColor: const Color(0xFFFCBA47),
                ),
                SizedBox(height: 8.h),
                Text(
                  "\$ ${product.price}",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                )
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            onFavoritePressed();
          },
          child: Icon(
            product.isFavorite
                ? Icons.favorite_rounded
                : Icons.favorite_outline_rounded,
            color: const Color(0xFFFE5A01),
          ),
        ),
      ],
    );
  }
}
