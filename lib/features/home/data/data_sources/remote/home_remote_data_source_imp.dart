import 'package:holland_bazar/core/models/category_model.dart';
import 'package:holland_bazar/core/models/product_model.dart';
import 'package:holland_bazar/core/network/models/paginate_response_model.dart';
import 'package:holland_bazar/core/usecases/usecase.dart';
import 'package:holland_bazar/core/util/constants.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'home_remote_data_source.dart';

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements HomeRemoteDataSource {
  HomeRemoteDataSourceImp({required super.dio});

  @override
  Future<PaginateResponseModel<CategoryModel>> getCategories({
    required PaginationParams params,
    required String token,
  }) async =>
      await performGetRequest<PaginateResponseModel<CategoryModel>>(
        endpoint: Endpoints.categories,
        token: token,
        queryParameters: QueryParams.paginationParams(params: params),
      );

  @override
  Future<PaginateResponseModel<ProductModel>> getFrequentlyOrderedProducts({
    required PaginationParams params,
    required String token,
  }) async =>
      await performGetRequest<PaginateResponseModel<ProductModel>>(
        endpoint: Endpoints.frequentlyOrdered,
        token: token,
        queryParameters: QueryParams.paginationParams(params: params),
      );
}
