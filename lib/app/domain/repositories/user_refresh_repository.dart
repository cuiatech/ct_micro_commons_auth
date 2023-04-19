import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class UserRefreshRepository {
  Future<CuiaResponse> call();
}
