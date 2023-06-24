import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/category.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetCategoriesUseCase
    implements UseCase<PaginateList<Category>, PaginationParams> {
  final HomeRepository _repository;

  GetCategoriesUseCase(this._repository);

  @override
  Future<Either<Failure, PaginateList<Category>>> call(
    PaginationParams params,
  ) async =>
      await _repository.getCategories(
        params: params,
      );
}
