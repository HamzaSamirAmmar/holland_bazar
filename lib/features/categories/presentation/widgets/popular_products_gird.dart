import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/core/util/enums.dart';
import 'package:holland_bazar/core/widgets/product_card.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_cached_network_image.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../injection.dart';
import '../bloc/categories_bloc.dart';
import '../bloc/categories_state.dart';

class PopularProductsGrid extends StatefulWidget {
  const PopularProductsGrid({super.key});

  @override
  State<PopularProductsGrid> createState() => _PopularProductsGridState();
}

class _PopularProductsGridState extends State<PopularProductsGrid> {
  final _bloc = sl<CategoriesBloc>();

  late final ScrollController _controller;

  @override
  void initState() {
    _bloc.addGetPopularProductsEvent();
    _controller = ScrollController()
      ..addListener(
        () {
          if (_bloc.state.popularProducts
              .paginationScrollControllerShouldGetMoreData(
            scrollController: _controller,
          )) {
            _bloc.addGetPopularProductsEvent();
          }
        },
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      bloc: _bloc,
      builder: (context, state) {
        message(
          context: context,
          bloc: _bloc,
          isError: state.error,
          message: state.message,
        );
        _bloc.state.popularProducts.checkPaginationInitialExtent(
          addEvent: () {
            _bloc.addGetPopularProductsEvent();
          },
          scrollController: _controller,
          isHorizontal: true,
          loaderSize: 60,
        );
        return Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 27.w,
                    ),
                    child: Text(
                      "Popular Items",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                      bottom: 20.h,
                      top: 20.h,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 11.w,
                      mainAxisSpacing: 20.h,
                      mainAxisExtent: 160.h,
                    ),
                    itemCount: state.popularProducts.items.length,
                    itemBuilder: (ctx, index) => ProductCard(
                      size: ProductCardSize.small,
                      product: state.popularProducts.items[index],
                    ),
                  ),
                ],
              ),
            ),
            if (state.isLoading) const Loader(),
          ],
        );
      },
    );
  }
}
