import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:holland_bazar/features/cart/domain/entities/cart.dart';
import 'package:holland_bazar/features/cart/domain/entities/cart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/cart_repository.dart';

@lazySingleton
class ApplyPromoCodeUseCase
    implements UseCase<Cart, ParamsApplyPromoCodeUseCase> {
  final CartRepository _repository;

  ApplyPromoCodeUseCase(this._repository);

  @override
  Future<Either<Failure, Cart>> call(
    ParamsApplyPromoCodeUseCase params,
  ) async =>
      await _repository.applyPromoCode(
        code: params.code,
      );
}

class ParamsApplyPromoCodeUseCase extends Equatable {
  final int code;

  const ParamsApplyPromoCodeUseCase({
    required this.code,
  });

  @override
  List<Object?> get props => [code];
}
