import 'package:holland_bazar/core/models/product_model.dart';
import 'package:holland_bazar/core/network/models/paginate_response_model.dart';
import 'package:holland_bazar/core/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/util/constants.dart';
import 'categories_remote_data_source.dart';

@LazySingleton(as: CategoriesRemoteDataSource)
class CategoriesRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements CategoriesRemoteDataSource {
  CategoriesRemoteDataSourceImp({required super.dio});

  @override
  Future<PaginateResponseModel<ProductModel>> getPopularProducts({
    required PaginationParams params,
    required String token,
  }) async =>
      await performGetRequest<PaginateResponseModel<ProductModel>>(
        endpoint: Endpoints.popularProducts,
        token: token,
        queryParameters: QueryParams.paginationParams(params: params),
      );
}
