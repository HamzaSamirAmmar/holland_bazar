import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:holland_bazar/features/cart/presentation/bloc/cart_bloc.dart';

import '../../features/cart/presentation/bloc/cart_state.dart';
import '../../injection.dart';
import '../entities/product.dart';
import '../util/constants.dart';
import '../util/enums.dart';
import '../util/generate_screen.dart';
import 'loader.dart';

class ProductCard extends StatefulWidget {
  final ProductCardSize size;
  final Product product;

  const ProductCard({
    super.key,
    required this.size,
    required this.product,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final _cartBloc = sl<CartBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      bloc: _cartBloc,
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              PageName.productDetailsPage,
              arguments: widget.product,
            );
          },
          child: Container(
            width: productCardDimensions[widget.size]!['w']!.w,
            height: productCardDimensions[widget.size]!['h']!.w,
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
                    bottom: widget.size == ProductCardSize.large ? 14.h : 9.h,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: widget.size == ProductCardSize.large
                              ? 153.w
                              : 101.w,
                          height: widget.size == ProductCardSize.large
                              ? 147.h
                              : 97.h,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF8EBE8),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CachedNetworkImage(
                                imageUrl: widget.product.image,
                                height: widget.size == ProductCardSize.large
                                    ? 138.h
                                    : 85.h,
                                width: widget.size == ProductCardSize.large
                                    ? 131.w
                                    : 91.w,
                                placeholder: (context, url) => const Loader(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                              Positioned(
                                top: widget.size == ProductCardSize.large
                                    ? 9.h
                                    : 6.h,
                                right: widget.size == ProductCardSize.large
                                    ? 7.w
                                    : 5.w,
                                child: GestureDetector(
                                  onTap: () {
                                    _cartBloc.addAddToCartEvent(
                                        id: widget.product.id, quantity: 1);
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: widget.size == ProductCardSize.large
                                        ? 12.w
                                        : 8.w,
                                    child: SvgPicture.asset(
                                      IconsAssets.add,
                                      width:
                                          widget.size == ProductCardSize.large
                                              ? 10.w
                                              : 7.w,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal:
                              widget.size == ProductCardSize.large ? 12.w : 8.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "15%",
                              style: TextStyle(
                                color: const Color(0xFF28AE61),
                                fontSize: widget.size == ProductCardSize.large
                                    ? 10.sp
                                    : 6.sp,
                              ),
                            ),
                            SizedBox(
                              height: widget.size == ProductCardSize.large
                                  ? 5.h
                                  : 2.h,
                            ),
                            Text(
                              widget.product.title,
                              style: TextStyle(
                                color: const Color(0xFF392F2D),
                                fontSize: widget.size == ProductCardSize.large
                                    ? 12.sp
                                    : 7.sp,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: widget.size == ProductCardSize.large
                                  ? 5.h
                                  : 2.h,
                            ),
                            Text(
                              widget.product.description,
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .color,
                                fontSize: widget.size == ProductCardSize.large
                                    ? 10.sp
                                    : 6.sp,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: widget.size == ProductCardSize.large
                                  ? 8.h
                                  : 3.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${widget.product.price}",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize:
                                        widget.size == ProductCardSize.large
                                            ? 15.sp
                                            : 10.sp,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${widget.product.rate}",
                                      style: TextStyle(
                                        color: const Color(0xFFE2D7D4),
                                        fontSize:
                                            widget.size == ProductCardSize.large
                                                ? 15.sp
                                                : 8.sp,
                                      ),
                                    ),
                                    SizedBox(width: 6.w),
                                    SvgPicture.asset(
                                      IconsAssets.starFill,
                                      height:
                                          widget.size == ProductCardSize.large
                                              ? 14.h
                                              : 9.h,
                                      width:
                                          widget.size == ProductCardSize.large
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
                if (widget.size == ProductCardSize.medium)
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
      },
    );
  }
}
