import 'package:dartz/dartz.dart';
import 'package:holland_bazar/core/entities/paginate_list.dart';
import 'package:holland_bazar/core/entities/product.dart';
import 'package:holland_bazar/core/error/failures.dart';
import 'package:holland_bazar/core/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../domain/repositories/offer_repository.dart';
import '../data_sources/local/offer_local_data_source.dart';
import '../data_sources/remote/offer_remote_data_source.dart';

@LazySingleton(as: OfferRepository)
class OfferRepositoryImp extends BaseRepositoryImpl implements OfferRepository {
  final OfferRemoteDataSource _remote;
  final OfferLocalDataSource _local;

  OfferRepositoryImp(
    this._remote,
    this._local, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, PaginateList<Product>>> getAllProducts({
    required PaginationParams params,
  }) async =>
      await requestWithToken<PaginateList<Product>>(
        (token) async {
          final paginationModel = await _remote.getAllProducts(
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
