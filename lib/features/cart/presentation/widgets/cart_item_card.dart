import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:holland_bazar/core/util/constants.dart';

import '../../../../core/widgets/custom_cached_network_image.dart';
import '../../domain/entities/cart_item.dart';

class CartItemCard extends StatelessWidget {
  final CartItem item;
  final VoidCallback onDismissed;

  const CartItemCard({
    super.key,
    required this.item,
    required this.onDismissed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 20.h,
      ),
      child: Dismissible(
        key: Key(UniqueKey().toString()),
        background: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 50.w,
              height: 50.w,
              decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .colorScheme
                    .primary,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFF08F20).withOpacity(0.6),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: SvgPicture.asset(
                IconsAssets.trash,
                height: 18.h,
                width: 16.w,
                fit: BoxFit.scaleDown,
              ),
            )
          ],
        ),
        direction: DismissDirection.endToStart,
        onDismissed: (_) {
          onDismissed();
        },
        child: Container(
          width: 325.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 19.w,
              vertical: 14.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 72.w,
                      height: 72.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8EBE8),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: CustomCachedNetworkImage(
                        imageUrl: item.product.image,
                        width: 67.w,
                        height: 67.w,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    SizedBox(
                      width: 150.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.h),
                          Text(
                            item.product.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .tertiary,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            item.product.description,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: const Color(0xFF919191),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          RichText(
                            text: TextSpan(
                              text: "\$",
                              style: TextStyle(
                                color: Theme
                                    .of(context)
                                    .colorScheme
                                    .primary,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                    text: "${item.product.price}",
                                    style: TextStyle(
                                      color: Theme
                                          .of(context)
                                          .colorScheme
                                          .tertiary,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme
                            .of(context)
                            .colorScheme
                            .primary,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFF08F20).withOpacity(0.35),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "${item.quantity}",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme
                            .of(context)
                            .colorScheme
                            .primary,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFF08F20).withOpacity(0.35),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "+",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 1.1,
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
