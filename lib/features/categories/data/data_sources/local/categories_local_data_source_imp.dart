import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'categories_local_data_source.dart';

@LazySingleton(as: CategoriesLocalDataSource)
class CategoriesLocalDataSourceImp extends BaseLocalDataSourceImp
    implements CategoriesLocalDataSource {
  CategoriesLocalDataSourceImp({required super.sharedPreferences});
}
