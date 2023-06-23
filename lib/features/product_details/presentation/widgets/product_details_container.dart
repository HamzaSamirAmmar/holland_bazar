import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/buttons/custom_text_button.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../injection.dart';
import '../bloc/product_details_bloc.dart';
import '../bloc/product_details_state.dart';
import 'product_description.dart';
import 'product_quantity.dart';
import 'product_tile.dart';

class ProductDetailsContainer extends StatefulWidget {
  const ProductDetailsContainer({super.key});

  @override
  State<ProductDetailsContainer> createState() =>
      _ProductDetailsContainerState();
}

class _ProductDetailsContainerState extends State<ProductDetailsContainer> {
  final _bloc = sl<ProductDetailsBloc>();

  int quantity = 1;

  void _increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
      bloc: _bloc,
      builder: (context, state) {
        message(
          context: context,
          message: state.message,
          isError: state.error,
          bloc: _bloc,
        );
        return Align(
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 375.w,
                constraints: BoxConstraints(
                  minHeight: 450.h,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .shadow
                          .withOpacity(0.16),
                      blurRadius: 78,
                      offset: const Offset(0, -2),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.3.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 18.h),
                      Divider(
                        thickness: 1.5,
                        indent: 157.2.w,
                        endIndent: 157.2.w,
                        color: const Color(0xFFB6B6B6),
                      ),
                      SizedBox(height: 29.2.h),
                      if (state.product != null) ...[
                        ProductTile(
                            product: state.product!,
                            onFavoritePressed: () {
                              _bloc.addChangeProductFavoriteStatusEvent(
                                isFavorite: state.product!.isFavorite,
                                productId: state.product!.id,
                              );
                            }),
                        SizedBox(height: 29.2.h),
                        ProductDescription(
                            description: state.product!.description),
                        SizedBox(height: 43.5.h),
                        ProductQuantity(
                          quantity: quantity,
                          decreaseQuantity: _decreaseQuantity,
                          increaseQuantity: _increaseQuantity,
                        ),
                        SizedBox(height: 28.h),
                        Center(
                          child: CustomTextButton(
                            width: 324.w,
                            title:
                                "Add $quantity to Order * ${state.product!.price}",
                            onPressed: () {
                              _bloc.addAddToCartEvent(
                                productId: state.product!.id,
                                quantity: quantity,
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 43.h),
                      ]
                    ],
                  ),
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
