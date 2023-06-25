import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/enums.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../core/widgets/product_card.dart';
import '../../../../injection.dart';
import '../bloc/offer_bloc.dart';
import '../bloc/offer_state.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  final _bloc = sl<OfferBloc>();
  late final ScrollController _controller;

  @override
  void initState() {
    _bloc.addGetAllProductsEvent();
    _controller = ScrollController()
      ..addListener(
        () {
          if (_bloc.state.products.paginationScrollControllerShouldGetMoreData(
            scrollController: _controller,
          )) {
            _bloc.addGetAllProductsEvent();
          }
        },
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OfferBloc, OfferState>(
      bloc: _bloc,
      builder: (context, state) {
        message(
          context: context,
          bloc: _bloc,
          isError: state.error,
          message: state.message,
        );
        _bloc.state.products.checkPaginationInitialExtent(
          addEvent: () {
            _bloc.addGetAllProductsEvent();
          },
          scrollController: _controller,
          isHorizontal: true,
          loaderSize: 60,
        );
        return Stack(
          children: [
            SingleChildScrollView(
              child: GridView.builder(
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
                  crossAxisSpacing: 8.w,
                  mainAxisSpacing: 20.h,
                  mainAxisExtent: 160.h,
                ),
                itemCount: state.products.items.length,
                itemBuilder: (ctx, index) => ProductCard(
                  size: ProductCardSize.medium,
                  product: state.products.items[index],
                ),
              ),
            ),
            if (state.isLoading) const Loader(),
          ],
        );
      },
    );
  }
}
