import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/features/categories/presentation/bloc/categories_bloc.dart';
import 'package:holland_bazar/features/categories/presentation/widgets/popular_products_gird.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/search_bar.dart';
import '../../../../injection.dart';
import '../widgets/categories_app_bar.dart';
import '../widgets/categories_grid.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(375.w, 200.h),
        child: const CategoriesAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CategoriesGrid(),
            PopularProductsGrid(),
          ],
        ),
      ),
    );
  }
}
