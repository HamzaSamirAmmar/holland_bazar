import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'cart_local_data_source.dart';

@LazySingleton(as: CartLocalDataSource)
class CartLocalDataSourceImp extends BaseLocalDataSourceImp
    implements CartLocalDataSource {
  CartLocalDataSourceImp({required super.sharedPreferences});
}
