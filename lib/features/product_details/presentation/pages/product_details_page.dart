import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/entities/product.dart';
import '../../../../core/widgets/custom_cached_network_image.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../injection.dart';
import '../bloc/product_details_bloc.dart';
import '../bloc/product_details_state.dart';
import '../widgets/product_details_container.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product product;

  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final _bloc = sl<ProductDetailsBloc>();

  @override
  void initState() {
    _bloc.addGetProductEvent(productId: widget.product.id);
    super.initState();
  }

  @override
  void dispose() {
    _bloc.emitInitial();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
      bloc: _bloc,
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              CustomCachedNetworkImage(
                imageUrl: widget.product.image,
                width: 375.w,
                height: 400.h,
              ),
              const ProductDetailsContainer(),
              if (state.isLoading) const Loader(),
            ],
          ),
        );
      },
    );
  }
}
