import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/entities/product.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/repositories/categories_repository.dart';
import '../data_sources/local/categories_local_data_source.dart';
import '../data_sources/remote/categories_remote_data_source.dart';

@LazySingleton(as: CategoriesRepository)
class CategoriesRepositoryImp extends BaseRepositoryImpl
    implements CategoriesRepository {
  final CategoriesRemoteDataSource _remote;
  final CategoriesLocalDataSource _local;

  CategoriesRepositoryImp(
    this._remote,
    this._local, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, PaginateList<Product>>> getPopularProducts({
    required PaginationParams params,
  }) async =>
      await requestWithToken<PaginateList<Product>>(
        (token) async {
          final paginationModel = await _remote.getPopularProducts(
            params: params,
            token: token,
          );
          return PaginateList<Product>(
            data: paginationModel.data,
            page: paginationModel.numPages,
            count: paginationModel.count,
          );
        },
      );
}
