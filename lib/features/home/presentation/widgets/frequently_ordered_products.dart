import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/features/home/presentation/bloc/home_state.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/enums.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../core/widgets/product_card.dart';
import '../../../../injection.dart';
import '../bloc/home_bloc.dart';

class FrequentlyOrderedProducts extends StatefulWidget {
  const FrequentlyOrderedProducts({super.key});

  @override
  State<FrequentlyOrderedProducts> createState() =>
      _FrequentlyOrderedProductsState();
}

class _FrequentlyOrderedProductsState extends State<FrequentlyOrderedProducts> {
  final _bloc = sl<HomeBloc>();

  late final ScrollController _controller;

  @override
  void initState() {
    _bloc.addGetFrequentlyOrderedProductsEvent();
    _controller = ScrollController()
      ..addListener(
        () {
          if (_bloc.state.frequentlyOrderedProducts
              .paginationScrollControllerShouldGetMoreData(
            scrollController: _controller,
          )) {
            _bloc.addGetFrequentlyOrderedProductsEvent();
          }
        },
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: _bloc,
      builder: (context, state) {
        message(
          context: context,
          bloc: _bloc,
          isError: state.error,
          message: state.message,
        );
        _bloc.state.frequentlyOrderedProducts.checkPaginationInitialExtent(
          addEvent: () {
            _bloc.addGetFrequentlyOrderedProductsEvent();
          },
          scrollController: _controller,
          isHorizontal: true,
          loaderSize: 60,
        );
        return Column(
          children: [
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
                        const Icon(
                          Icons.navigate_next_rounded,
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
            Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 12.w),
                      ...state.frequentlyOrderedProducts.items
                          .map(
                            (product) => Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: ProductCard(
                                size: ProductCardSize.large,
                                product: product,
                              ),
                            ),
                          )
                          .toList(),
                      SizedBox(width: 12.w),
                      if (state.frequentlyOrderedProducts.isLoading) const Loader(),
                    ],
                  ),
                ),
                if (state.isLoading) const Loader(),
              ],
            ),
          ],
        );
      },
    );
  }
}
