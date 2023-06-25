import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/core/widgets/custom_cached_network_image.dart';
import 'package:holland_bazar/core/widgets/loader.dart';

import '../../../../core/util/constants.dart';
import '../../../../injection.dart';
import '../bloc/categories_bloc.dart';
import '../bloc/categories_state.dart';

class CategoriesGrid extends StatefulWidget {
  const CategoriesGrid({super.key});

  @override
  State<CategoriesGrid> createState() => _CategoriesGridState();
}

class _CategoriesGridState extends State<CategoriesGrid> {
  final _bloc = sl<CategoriesBloc>();

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
    return BlocBuilder<CategoriesBloc, CategoriesState>(
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
        return Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                      top: 10.h,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 11.w,
                      mainAxisSpacing: 10.h,
                      mainAxisExtent: 130.h,
                    ),
                    itemCount: state.categories.items.length,
                    itemBuilder: (ctx, index) => Column(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          width: 103.w,
                          height: 103.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context)
                                    .colorScheme
                                    .shadow
                                    .withOpacity(0.16),
                                offset: const Offset(0, 2),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: CustomCachedNetworkImage(
                            imageUrl: state.categories.items[index].image,
                            height: 50.h,
                            width: 50.w,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          state.categories.items[index].name,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 35.h),
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
