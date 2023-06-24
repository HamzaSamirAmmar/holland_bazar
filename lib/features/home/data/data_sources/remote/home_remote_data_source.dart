import 'package:holland_bazar/core/models/product_model.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/models/category_model.dart';
import '../../../../../core/network/models/paginate_response_model.dart';
import '../../../../../core/usecases/usecase.dart';

abstract class HomeRemoteDataSource extends BaseRemoteDataSource {
  Future<PaginateResponseModel<CategoryModel>> getCategories({
    required PaginationParams params,
    required String token,
  });

  Future<PaginateResponseModel<ProductModel>> getFrequentlyOrderedProducts({
    required PaginationParams params,
    required String token,
  });
}
