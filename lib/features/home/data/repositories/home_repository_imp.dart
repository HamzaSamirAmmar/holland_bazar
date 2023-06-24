import 'package:dartz/dartz.dart';
import 'package:holland_bazar/core/entities/product.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/category.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/repositories/home_repository.dart';
import '../data_sources/local/home_local_data_source.dart';
import '../data_sources/remote/home_remote_data_source.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImp extends BaseRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource _local;
  final HomeRemoteDataSource _remote;

  HomeRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, PaginateList<Category>>> getCategories({
    required PaginationParams params,
  }) async =>
      await requestWithToken<PaginateList<Category>>(
        (token) async {
          final paginationModel = await _remote.getCategories(
            params: params,
            token: token,
          );
          return PaginateList<Category>(
            data: paginationModel.data,
            page: paginationModel.numPages,
            count: paginationModel.count,
          );
        },
      );

  @override
  Future<Either<Failure, PaginateList<Product>>> getFrequentlyOrderedProducts({
    required PaginationParams params,
  }) async =>
      await requestWithToken<PaginateList<Product>>(
        (token) async {
          final paginationModel = await _remote.getFrequentlyOrderedProducts(
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
