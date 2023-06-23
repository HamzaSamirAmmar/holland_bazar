import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/product_details_repository.dart';

@lazySingleton
class ChangeFavoriteStatusUseCase
    implements UseCase<void, ParamsChangeFavoriteStatusUseCase> {
  final ProductDetailsRepository _repository;

  ChangeFavoriteStatusUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(
    ParamsChangeFavoriteStatusUseCase params,
  ) async =>
      await _repository.changeFavoriteStatus(
        productId: params.productId,
        isFavorite: params.isFavorite,
      );
}

class ParamsChangeFavoriteStatusUseCase extends Equatable {
  final int productId;
  final bool isFavorite;

  const ParamsChangeFavoriteStatusUseCase({
    required this.isFavorite,
    required this.productId,
  });

  @override
  List<Object?> get props => [productId, isFavorite];
}
