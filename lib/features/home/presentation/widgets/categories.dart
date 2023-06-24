import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/constants.dart';
import '../../../../../injection.dart';
import '../../../../core/entities/category.dart';
import '../../../../core/widgets/loader.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';
import 'category_card.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _HomeOffersWidgetState();
}

class _HomeOffersWidgetState extends State<Categories> {
  final _bloc = sl<HomeBloc>();

  late final ScrollController _controller;

  @override
  void initState() {
    _bloc.addGetCategoriesEvent();
    _controller = ScrollController()
      ..addListener(
        () {
          if (_bloc.state.categories
              .paginationScrollControllerShouldGetMoreData(
            scrollController: _controller,
          )) {
            _bloc.addGetCategoriesEvent();
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
        _bloc.state.categories.checkPaginationInitialExtent(
          addEvent: () {
            _bloc.addGetCategoriesEvent();
          },
          scrollController: _controller,
          isHorizontal: true,
          loaderSize: 60,
        );
        return SizedBox(
          width: 375.w,
          height: state.categories.items.isNotEmpty ? null : 95.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 7.w),
                    const CategoryCard(
                      category: Category(
                        id: 0,
                        name: "Past Order",
                        image: ImagesAssets.pastOrder,
                      ),
                      localImage: true,
                    ),
                    const CategoryCard(
                      category: Category(
                        id: 0,
                        name: "Free Delivery",
                        image: ImagesAssets.freeDelivery,
                      ),
                      localImage: true,
                    ),
                    ...state.categories.items
                        .map(
                          (category) => CategoryCard(
                            category: category,
                          ),
                        )
                        .toList(),
                    const CategoryCard(
                      category: Category(
                        id: 0,
                        name: "",
                        image: "",
                      ),
                      localImage: true,
                    ),
                    SizedBox(width: 7.w),
                    if (state.categories.isLoading) const Loader(),
                  ],
                ),
              ),
              if (state.isLoading) const Loader(),
            ],
          ),
        );
      },
    );
  }
}
