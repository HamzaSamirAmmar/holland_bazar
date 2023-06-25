import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:holland_bazar/core/util/constants.dart';
import 'package:holland_bazar/core/util/generate_screen.dart';
import 'package:holland_bazar/core/widgets/buttons/custom_text_button.dart';
import 'package:holland_bazar/core/widgets/loader.dart';
import 'package:holland_bazar/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:holland_bazar/features/cart/presentation/widgets/cart_item_card.dart';

import '../../../../injection.dart';
import '../bloc/cart_state.dart';
import '../widgets/cart_app_bar.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final _bloc = sl<CartBloc>();

  final _codeController = TextEditingController();

  @override
  void initState() {
    _bloc.addGetCartEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      bloc: _bloc,
      builder: (context, state) {
        message(
          context: context,
          message: state.message,
          isError: state.error,
          bloc: _bloc,
        );
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: PreferredSize(
              preferredSize: Size(375.w, 84.h),
              child: const CartAppBar(),
            ),
            body: Stack(
              children: [
                if (state.cart != null)
                  Stack(
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25.w,
                          ),
                          child: Column(
                            children: [
                              ...state.cart!.items.map(
                                (item) => CartItemCard(
                                  item: item,
                                  onDismissed: () {
                                    _bloc.addRemoveFromCartEvent(
                                      id: item.id,
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 450.h),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 320.h,
                        left: 25.w,
                        right: 25.w,
                        child: DottedBorder(
                          radius: const Radius.circular(30),
                          borderType: BorderType.RRect,
                          padding: EdgeInsets.zero,
                          borderPadding: EdgeInsets.zero,
                          dashPattern: const [4, 4],
                          color: const Color(0xFFEEEEEE),
                          strokeWidth: 2,
                          child: Container(
                            height: 58.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 18.w,
                                right: 8.w,
                                top: 9.h,
                                bottom: 9.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(IconsAssets.discount),
                                      SizedBox(width: 8.w),
                                      SizedBox(
                                        width: 150.w,
                                        child: TextFormField(
                                          controller: _codeController,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            hintText: "Enter promo code",
                                            hintStyle: TextStyle(
                                              fontSize: 12.sp,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .color,
                                            ),
                                            border: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            focusedErrorBorder:
                                                InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _bloc.addApplyPromoCodeEvent(
                                        code: int.parse(_codeController.text),
                                      );
                                    },
                                    child: Container(
                                      width: 64.w,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        borderRadius: BorderRadius.circular(21),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Apply",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 280.h,
                          ),
                          width: 375.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xFF7779B2).withOpacity(0.04),
                                blurRadius: 40,
                                offset: const Offset(0, -6),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 24.w,
                              right: 24.w,
                              top: 28.h,
                              bottom: 43.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total Amount",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    Text(
                                      "${state.cart!.totalPrice} \$",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 7.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Delivery",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    Text(
                                      "${state.cart!.deliveryPrice} \$",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 7.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Offer",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        color: const Color(0xFFFF0000),
                                      ),
                                    ),
                                    Text(
                                      "${state.cart!.discountValue} \$",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        color: const Color(0xFFFF0000),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 26.h),
                                const DashedLine(),
                                SizedBox(height: 23.h),
                                Text(
                                  "Grand Total    \$${state.cart!.grandTotal}",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 23.h),
                                CustomTextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(
                                      PageName.checkoutPage,
                                    );
                                  },
                                  width: 324.w,
                                  title: "Checkout",
                                  backgroundColor: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .color,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                if (state.isLoading) const Loader(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFEEEEEE)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    const dashWidth = 1;
    const dashSpace = 5;
    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(DashedLinePainter oldDelegate) => false;
}

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedLinePainter(),
      child: const SizedBox(
        height: 1,
        width: double.infinity,
      ),
    );
  }
}
