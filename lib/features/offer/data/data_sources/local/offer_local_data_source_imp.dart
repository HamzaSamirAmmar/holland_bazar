import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'offer_local_data_source.dart';

@LazySingleton(as: OfferLocalDataSource)
class OfferLocalDataSourceImp extends BaseLocalDataSourceImp
    implements OfferLocalDataSource {
  OfferLocalDataSourceImp({required super.sharedPreferences});
}
