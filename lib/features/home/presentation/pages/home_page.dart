import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/categories.dart';
import '../widgets/frequently_ordered_products.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/offers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeAppBar(),
          const Offers(),
          SizedBox(height: 38.3.h),
          const Categories(),
          SizedBox(height: 10.h),
          const FrequentlyOrderedProducts(),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
