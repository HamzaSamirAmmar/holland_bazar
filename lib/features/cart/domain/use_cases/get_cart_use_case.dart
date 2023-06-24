import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/cart.dart';
import '../repositories/cart_repository.dart';

@lazySingleton
class GetCartUseCase implements UseCase<Cart?, NoParams> {
  final CartRepository _repository;

  GetCartUseCase(this._repository);

  @override
  Future<Either<Failure, Cart?>> call(NoParams params) async =>
      await _repository.getCart();
}
