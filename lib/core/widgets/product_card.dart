import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../entities/product.dart';
import '../util/constants.dart';
import '../util/enums.dart';
import '../util/generate_screen.dart';
import 'loader.dart';

class ProductCard extends StatelessWidget {
  final ProductCardSize size;
  final Product product;

  const ProductCard({
    super.key,
    required this.size,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          PageName.productDetailsPage,
          arguments: product,
        );
      },
      child: Container(
        width: productCardDimensions[size]!['w']!.w,
        height: productCardDimensions[size]!['h']!.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withOpacity(0.04),
              offset: const Offset(0, 2),
              blurRadius: 48,
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 3.h,
                bottom: size == ProductCardSize.large ? 14.h : 9.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: size == ProductCardSize.large ? 153.w : 101.w,
                      height: size == ProductCardSize.large ? 147.h : 97.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8EBE8),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CachedNetworkImage(
                            imageUrl: product.image,
                            height:
                                size == ProductCardSize.large ? 138.h : 85.h,
                            width: size == ProductCardSize.large ? 131.w : 91.w,
                            placeholder: (context, url) => const Loader(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          Positioned(
                            top: size == ProductCardSize.large ? 9.h : 6.h,
                            right: size == ProductCardSize.large ? 7.w : 5.w,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius:
                                  size == ProductCardSize.large ? 12.w : 8.w,
                              child: SvgPicture.asset(
                                IconsAssets.add,
                                width:
                                    size == ProductCardSize.large ? 10.w : 7.w,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size == ProductCardSize.large ? 12.w : 8.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "15%",
                          style: TextStyle(
                            color: const Color(0xFF28AE61),
                            fontSize:
                                size == ProductCardSize.large ? 10.sp : 6.sp,
                          ),
                        ),
                        SizedBox(
                          height: size == ProductCardSize.large ? 5.h : 2.h,
                        ),
                        Text(
                          product.title,
                          style: TextStyle(
                            color: const Color(0xFF392F2D),
                            fontSize:
                                size == ProductCardSize.large ? 12.sp : 7.sp,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: size == ProductCardSize.large ? 5.h : 2.h,
                        ),
                        Text(
                          product.description,
                          style: TextStyle(
                            color: Theme.of(context).textTheme.subtitle2!.color,
                            fontSize:
                                size == ProductCardSize.large ? 10.sp : 6.sp,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: size == ProductCardSize.large ? 8.h : 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${product.price}",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: size == ProductCardSize.large
                                    ? 15.sp
                                    : 10.sp,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${product.rate}",
                                  style: TextStyle(
                                    color: const Color(0xFFE2D7D4),
                                    fontSize: size == ProductCardSize.large
                                        ? 15.sp
                                        : 8.sp,
                                  ),
                                ),
                                SizedBox(width: 6.w),
                                SvgPicture.asset(
                                  IconsAssets.starFill,
                                  height: size == ProductCardSize.large
                                      ? 14.h
                                      : 9.h,
                                  width: size == ProductCardSize.large
                                      ? 15.w
                                      : 10.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            if (size == ProductCardSize.medium)
              Positioned(
                left: -5.w,
                top: 19.h,
                child: Stack(
                  // alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      IconsAssets.ticket,
                    ),
                    Positioned(
                      right: 1.w,
                      top: 1.h,
                      child: Text(
                        "- 15%",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
