import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/models/product_model.dart';
import '../../../../../core/network/models/paginate_response_model.dart';
import '../../../../../core/usecases/usecase.dart';

abstract class OfferRemoteDataSource extends BaseRemoteDataSource {
  Future<PaginateResponseModel<ProductModel>> getAllProducts({
    required PaginationParams params,
    required String token,
  });
}
