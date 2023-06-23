import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'product_details_local_data_source.dart';

@LazySingleton(as: ProductDetailsLocalDataSource)
class ProductDetailsLocalDataSourceImp extends BaseLocalDataSourceImp
    implements ProductDetailsLocalDataSource {
  ProductDetailsLocalDataSourceImp({required super.sharedPreferences});
}
