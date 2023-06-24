import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/cart_app_bar.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(375.w, 84.h),
        child: const CartAppBar(),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(),
          ),
        ],
      ),
    );
  }
}
