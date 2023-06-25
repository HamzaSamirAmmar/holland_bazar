import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:holland_bazar/core/util/constants.dart';
import 'package:holland_bazar/features/offer/presentation/widgets/all_products.dart';
import 'package:holland_bazar/features/offer/presentation/widgets/offer_card.dart';
import 'package:holland_bazar/features/offer/presentation/widgets/offer_categories.dart';

import '../widgets/offer_app_bar.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(375.w, 400.h),
        child: const OfferAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            OfferCategories(),
            AllProducts(),
          ],
        ),
      ),
    );
  }
}
